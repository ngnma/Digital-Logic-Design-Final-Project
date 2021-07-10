module f1(output out,input a,a2,b,b2,c,c2,d,d2);

	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	supply0 gnd;
	supply1 vdd;
	
	pmos(w1,vdd,a2);
	pmos(w2,w1,d2);
	pmos(out,w2,c2);
	pmos(w3,vdd,a2);
	pmos(w4,w3,b);
	pmos(out,w4,c2);
	pmos(w5,vdd,b2);
	pmos(out,w5,d);
	pmos(w6,vdd,a);
	pmos(w7,w6,c);
	pmos(out,w7,d);
	
	nmos(out,w8,a2);
	nmos(out,w8,d2);
	nmos(out,w8,c2);
	nmos(w8,w9,a2);
	nmos(w8,w9,b);
	nmos(w8,w9,c2);
	nmos(w9,w10,a);
	nmos(w9,w10,c);
	nmos(w9,w10,d);
	nmos(w10,gnd,d);
	nmos(w10,gnd,b2);

endmodule