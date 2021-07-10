module alu(
	input [7:0]a, 
	input [7:0]b,
	input [1:0]sel,
	output [7:0] out);
		wire [7:0]shiftwire,addwire,invertwire,lastwire;
		shift  shift(a,b,shiftwire);
		add add(a,b,addwire);
		invert invert(b,invertwire);
		last last (a,b,lastwire);
		assign out=sel[1]?(sel[0]?   lastwire: invertwire   ):(sel[0]? addwire  :  shiftwire );
	
endmodule

module shift(input [7:0]a,input[7:0]b,output [7:0]r);
	assign r=(a<<<2) + (b>>>2);
endmodule

module add(input [7:0]a,input[7:0]b,output [7:0]r);
	assign r=b*2 +a;
endmodule

module invert(input[7:0]b,output [7:0]r);
	assign r=b*(-1);
endmodule	

module last(input [7:0]a,input[7:0]b,output [7:0]r);
	wire x;
	wire [7:0]y;
	assign y=(3*a) -b;
	assign x=y[7];
	assign r= (x==1)? (-1)*y:y;
endmodule