onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate -radix hexadecimal /testbench/dut/imem/rd
add wave -noupdate /testbench/dut/dmem/we
add wave -noupdate /testbench/dut/dmem/a
add wave -noupdate /testbench/dut/dmem/wd
add wave -noupdate /testbench/dut/dmem/rd
add wave -noupdate /testbench/dut/dmem/RAM
add wave -noupdate /testbench/dut/arm/PC
add wave -noupdate /testbench/dut/arm/Instr
add wave -noupdate /testbench/dut/arm/MemWrite
add wave -noupdate /testbench/dut/arm/ALUResult
add wave -noupdate /testbench/dut/arm/WriteData
add wave -noupdate /testbench/dut/arm/ALUFlags
add wave -noupdate /testbench/dut/arm/RegWrite
add wave -noupdate /testbench/dut/arm/ALUSrc
add wave -noupdate /testbench/dut/arm/MemtoReg
add wave -noupdate /testbench/dut/arm/PCSrc
add wave -noupdate /testbench/dut/arm/RegSrc
add wave -noupdate /testbench/dut/arm/ImmSrc
add wave -noupdate /testbench/dut/arm/ALUControl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 185
configure wave -valuecolwidth 128
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {40 ps}
