transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/ALU {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/ALU/alu32.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks/regfile.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks/mux2.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks/flopr.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks/extend.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/genericBuildingBlocks/adder.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/testbench {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/testbench/top.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/testbench {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/testbench/testbench.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/testbench {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/testbench/dmem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/pizzaMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/marioMoveMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/marioMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/marioJumpMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/dkStandMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/dkSideMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA/sprite {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/sprite/barMem.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/VGA_Controller.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/system.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/pizza_pos.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/mux_colors.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/mario_pos.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/map.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/draw.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/VGA {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/VGA/dk_pos.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/decoder.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/datapath.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/controller.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/condlogic.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/arm.sv}
vlog -sv -work work +incdir+C:/Users/and-h/Documents/Carpeta\ Temporal-\ Taller/DonkeyKong-Quartus/ARM/testbench {C:/Users/and-h/Documents/Carpeta Temporal- Taller/DonkeyKong-Quartus/ARM/testbench/imem.sv}

