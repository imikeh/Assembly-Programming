onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/irq
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/rst_n
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/clk
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/if_pc
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/in_isr
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/id2intctl_status
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/intctl_epc
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/intctl_cause
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/intctl_status
add wave -noupdate -expand -group interrupt_ctl /testbench/u_cpu_top/u_cpu_core/u_interrupt_controller/iack
add wave -noupdate -expand -group GPRs -radix unsigned /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg08
add wave -noupdate -expand -group GPRs -radix unsigned /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg09
add wave -noupdate -expand -group GPRs -radix unsigned /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg10
add wave -noupdate -expand -group GPRs /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg26
add wave -noupdate -expand -group GPRs /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg27
add wave -noupdate -expand -group CP0_reg /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/cpr12
add wave -noupdate -expand -group CP0_reg /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/cpr13
add wave -noupdate -expand -group CP0_reg /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/cpr14
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/clk
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/r_addr2
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/r_rden2
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/r_data2
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/w_addr
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/w_wren
add wave -noupdate -expand -group code_memory /testbench/u_code_memory/w_data
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/clk
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/r_addr2
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/r_rden2
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/r_data2
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/w_addr
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/w_wren
add wave -noupdate -expand -group stack_memory /testbench/u_stack_memory/w_data
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
WaveRestoreCursors {{Cursor 1} {3540185 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {4723648 ps}
