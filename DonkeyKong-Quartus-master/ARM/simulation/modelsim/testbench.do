onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/dut/arm/clk
add wave -noupdate /testbench/dut/arm/reset
add wave -noupdate /testbench/dut/arm/PC
add wave -noupdate -radix hexadecimal /testbench/dut/arm/Instr
add wave -noupdate /testbench/dut/arm/MemWrite
add wave -noupdate -radix decimal /testbench/dut/arm/ALUResult
add wave -noupdate -radix decimal /testbench/dut/arm/WriteData
add wave -noupdate /testbench/dut/arm/ReadData
add wave -noupdate /testbench/dut/arm/ALUFlags
add wave -noupdate /testbench/dut/arm/RegWrite
add wave -noupdate /testbench/dut/arm/ALUSrc
add wave -noupdate /testbench/dut/arm/MemtoReg
add wave -noupdate /testbench/dut/arm/PCSrc
add wave -noupdate /testbench/dut/arm/RegSrc
add wave -noupdate /testbench/dut/arm/ImmSrc
add wave -noupdate /testbench/dut/arm/ALUControl
add wave -noupdate /testbench/dut/imem/a
add wave -noupdate /testbench/dut/imem/rd
add wave -noupdate /testbench/dut/dmem/clk
add wave -noupdate /testbench/dut/dmem/we
add wave -noupdate /testbench/dut/dmem/a
add wave -noupdate /testbench/dut/dmem/wd
add wave -noupdate /testbench/dut/dmem/rd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {194 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 216
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
WaveRestoreZoom {5 ps} {204 ps}
bookmark add wave bookmark0 {{0 ps} {1 ns}} 0
