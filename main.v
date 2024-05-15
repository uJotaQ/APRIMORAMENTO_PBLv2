module main(CLK, C1, C2, C3, C4, C5, L1, L2, L3, L4, L5, L6, L7);
	
	input CLK;
	output C1, C2, C3, C4, C5, L1, L2, L3, L4, L5, L6, L7;
	
	wire Q1, Q2, Q3, Q1_, Q2_, Q3_;
	
	delay(CLK, Q1_d);
	
	dFlipFlop(Q1_, 0, Q1_d, Q1, Q1_);
	
	dFlipFlop(Q2_, 0, Q1_, Q2, Q2_);
	
	dFlipFlop(Q3_, 0, Q2_, Q3, Q3_);
	
	and(C1, Q1_, Q2_, Q3_);
	and(C2, Q1, Q2_, Q3_);
	and(C3, Q1_, Q2, Q3_);
	and(C4, Q1, Q2, Q3_);
	and(C5, Q1_, Q2_, Q3);
	
// LIGANDO A LETRA "A" NA MATRIZ
//	or(L2, C2, C3, C4);
//	or(L3, C2, C3, C4);
//	or(L4, C2, C3, C4);
//	or(L6, C2, C3, C4);
//	or(L7, C2, C3, C4);

// LIGANDO A LETRA "G" NA MATRIZ
//or(L2, C2, C3, C4, C5);
//or(L3, C2, C3, C4, C5);
//or(L4, C2, C3);
//or(L5, C2, C3, C4);
//or(L6, C2, C3, C4);

// LIGANDO O NUMERO "0" NA MATRIZ
	or(L2, C2, C3, C4);
	or(L3, C2, C3, C4);
	or(L4, C2, C3, C4);
	or(L5, C2, C3, C4);
	or(L6, C2, C3, C4);

endmodule