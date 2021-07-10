module f2_tb();

	reg [7:0]a;
	reg [7:0]b;
	reg cin;
	wire [7:0]s;
	wire cout;
	wire overflow;
	
	f2 f2(cin,a,b,cout,overflow,s);
	
	initial begin
		$dumpfile("f2.vcd");
		$dumpvars(0,f2_tb);

		a=8'b00000011;
		b=8'b00000011;
		cin=0;
		#20;
		a=8'b11111001;
		b=8'b11111001;
		#20;
		a=8'b10000001;
		b=8'b10000001;
		#20;
		a=8'b11111101;
		b=8'b00000111;
		#20;
		a=8'b01111111;
		b=8'b01111111;
		#20;
	end

endmodule