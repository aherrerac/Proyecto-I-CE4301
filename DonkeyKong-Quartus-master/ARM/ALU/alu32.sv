module alu32(input logic [31:0] A, B,
 				 input logic [1:0] C,
				 output logic [31:0] R,
				 output logic [3:0]F); // Flag[0]=overflow, Flag[1]=carry, Flag[2]=zero, Flag[3]=negative
				 
				 logic [32:0] tmp;
				 logic x;
				 logic y;
				 
				 always @*
					begin 
						case(C)
							2'b00 : tmp = A + B;
							2'b01 : tmp = A - B;
							2'b10 : tmp = A & B;
							2'b11 : tmp = A | B;
							default : tmp = 0;
						endcase
			F[3] = tmp[31];
			F[1] = tmp[32];
			R = tmp[31:0];
			x = A[31] & B[31];
			y = B[31] & R[31];
			if(x)
					F[0] = 0;
			else
				begin
					if(!y)
						F[0] = 0;
					else
						F[0] = 1;
				end
			if(R == 0)
				F[2] = 1;
			else
				F[2] = 0;
end
				 
			
endmodule