module imem(input logic [31:0] a,
				output logic [31:0] rd);
	logic [31:0] RAM[63:0];
	initial
	$readmemh("C://Users//pablo//Documents//1-TEC//Arqui I//Proyecto-1-CE4301//DonkeyKong-Quartus-master//ARM//memfile.dat",RAM);
	//$readmemh("C://Users//and-h//Documents//Carpeta Temporal- Taller//DonkeyKong-Quartus//ARM//memfile.dat",RAM);
	
	assign rd = RAM[a[31:2]]; // word aligned
endmodule