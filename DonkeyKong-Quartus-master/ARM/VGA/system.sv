module system(input logic clk,
              input logic reset,
				  input logic in1,
				  input logic [31:0] mario_pos, barril_pos,
              output logic vsync,
              output logic hsync,
				  output logic blank,
				  output logic sync,
				  output logic [7:0] r,
				  output logic [7:0] g,
				  output logic [7:0] b,
				  output logic vga_clk);

		
	logic clk25 = 0;


	always @(posedge clk) begin
		if(clk == 1'b1)
		begin
			clk25 = ~clk25;
		end
	end

	logic clkcolor = 0;

	always @(posedge clk25) begin
		if(clk25 == 1'b1)
		begin
			clkcolor = ~clkcolor;
		end
	end

	
	logic [7:0] ir,ig,ib;
	logic [9:0] hcount,vcount, mario_h, mario_v,pizza_h, pizza_v,barril_h,barril_v,dk_h, dk_v, new_h,new_d;
	logic [1:0] sprite_m, mario_draw,pizza_draw,sprite_dk,barril_draw;
	logic bounds_draw, tile_draw,display_barril; 
	logic [1:0]dk_draw;
	
	assign mario_h = 155;
	assign mario_v = 427;
	
	assign pizza_h = 220;
	assign pizza_v = 220;

	assign barril_h = 215;
	assign barril_v = 236;
	
	assign dk_h = 160;
	assign dk_v = 220;
	
	always_comb begin
		if (in1 == 1'b1) begin
			new_h = mario_h-5;
			new_d = dk_h-5;
			sprite_m  = 2'b00;
			sprite_dk= 2'b00;
			display_barril = 0;
		end
		else begin 
			new_h = mario_h;
			sprite_m  = 2'b01;
			sprite_dk= 2'b01;
			new_d = dk_h;
			display_barril =1;
		end
	end
	
	//Verifies if in bounds of game
	draw Draw(hcount, vcount, bounds_draw);
	
	map Map(hcount, vcount,bounds_draw,tile_draw);
	
	mario_pos Mario(hcount,vcount,new_h,mario_v,sprite_m,bounds_draw,mario_draw);
	
	pizza_pos Pizza(hcount,vcount,pizza_h,pizza_v,bounds_draw,pizza_draw);
	
	barril_pos Barril(hcount,vcount,barril_h,barril_v,bounds_draw,display_barril,barril_draw);
	
	dk_pos DK(hcount,vcount,new_d,dk_v,sprite_dk,bounds_draw,dk_draw);
	
	mux_colors mc(bounds_draw,tile_draw,mario_draw,pizza_draw,barril_draw,dk_draw,ir,ig,ib);

	VGA_Controller vga (ir,ig,ib,r,g,b,hsync,vsync,sync,blank,vga_clk,clk25,reset,hcount,vcount);


endmodule
