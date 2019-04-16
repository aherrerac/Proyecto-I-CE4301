module deco2b (input  logic binary_in, 
					output logic [1:0] decoder_out,
					input  logic enable );
  
 	always_comb begin
    	decoder_out = 0;
    	if (enable) begin
     		case (binary_in)
      		 1'b0 : decoder_out = 2'b01;
			    1'b1 : decoder_out = 2'b10;
   			endcase
   		end
 	end
endmodule
