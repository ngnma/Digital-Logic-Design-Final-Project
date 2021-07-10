module alu_tb();
	reg [7:0]a;
	reg [7:0]b;
	reg [1:0]sel;
	wire [7:0] out;
	
	alu alu(a,b,sel,out);
	
		initial begin
		
			$dumpfile("alu.vcd");
			$dumpvars(0,alu_tb);
			
			sel=2'b00;
			b=8'b00011100;
			a=8'b00010101;
			#20;
			sel=2'b01;
			#20;
			sel=2'b10;
			#20;
			sel=2'b11;
			#20;
			sel=2'b10;
			b=8'b10011100;
			#20;
			sel=2'b11;
			b=8'b00011100;
			a=8'b00000001;
			#20;
		
		end
	endmodule