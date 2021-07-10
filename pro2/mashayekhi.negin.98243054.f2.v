module f2(
input cin,
input [7:0]a, 
input [7:0]b,
output cout,
output overflow,
output [7:0]s);
// 	input [7:0]a,[7:0]b;
// 	input cin;
// 	output [7:0]s;
// 	output cout;
// 	output overflow;
	wire w01,w02,w03;
	wire w11,w12,w13;
	wire w21,w22,w23;
	wire w31,w32,w33;
	wire w41,w42,w43;
	wire w51,w52,w53;
	wire w61,w62,w63;
	wire w71,w72,w73;
	wire c1,c2,c3,c4,c5,c6,c7;
	
	xor(w01,a[0],b[0]);
	xor(s[0],w01,cin);
	and(w02,a[0],b[0]);
	and(w03,w01,cin);
	or(c1,w02,w03);
	
	xor(w11,a[1],b[1]);
	xor(s[1],w11,c1);
	and(w12,a[1],b[1]);
	and(w13,w11,c1);
	or(c2,w12,w13);
	
	xor(w21,a[2],b[2]);
	xor(s[2],w21,c2);
	and(w22,a[2],b[2]);
	and(w23,w21,c2);
	or(c3,w22,w23);
	
	xor(w31,a[3],b[3]);
	xor(s[3],w31,c3);
	and(w32,a[3],b[3]);
	and(w33,w31,c3);
	or(c4,w32,w33);
	
	xor(w41,a[4],b[4]);
	xor(s[4],w41,c4);
	and(w42,a[4],b[4]);
	and(w43,w41,c4);
	or(c5,w42,w43);
	
	xor(w51,a[5],b[5]);
	xor(s[5],w51,c5);
	and(w52,a[5],b[5]);
	and(w53,w51,c5);
	or(c6,w52,w53);
	
	xor(w61,a[6],b[6]);
	xor(s[6],w61,c6);
	and(w62,a[6],b[6]);
	and(w63,w61,c6);
	or(c7,w62,w63);
	
	xor(w71,a[7],b[7]);
	xor(s[7],w71,c7);
	and(w72,a[7],b[7]);
	and(w73,w71,c7);
	or(cout,w72,w73);
	
	xor(overflow,c7,cout);
	
endmodule	
	
	
	