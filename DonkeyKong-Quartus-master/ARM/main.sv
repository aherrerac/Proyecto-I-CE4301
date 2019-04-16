module main(input logic clk, reset,
       		input logic in1,
				output logic MemWrite,
				output logic [31:0] DataAdr, WriteData,
				//VGA
				output logic vsync,
				output logic hsync,
				output logic blank,
				output logic sync,
				output logic [7:0] r,
				output logic [7:0] g,
				output logic [7:0] b,
				output logic vga_clk);


	logic [31:0] PC, Instr, ReadData;
	logic MemWrite1, enableSprite,WriteMario;
	logic [31:0] mario_pos, barril_pos;
	assign enableSprite = 1;

	arm ARM(clk,reset,PC,Instr,MemWrite,DataAdr,WriteData,ReadData);
		
	imem imem(PC, Instr);
		
	assign WriteMario	= (MemWrite  && enableSprite) ? 1 : 0; //Se debe cambiar el [0]
	
	dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData);
	
	//deco2b Deco(1,)
	
	reg_sprite(clk,WriteMario,WriteData,mario_pos, barril_pos);
					
	system VGA( clk,reset,in1,mario_pos, barril_pos,vsync,hsync,blank,sync,r,g,b,vga_clk);
	
	
endmodule

