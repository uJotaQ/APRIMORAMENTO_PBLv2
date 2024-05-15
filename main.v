module main(AS, GT, CLK, C1, C2, C3, C4, C5, L1, L2, L3, L4, L5, L6, L7);
	
	input CLK, AS, GT;
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
	or(A2, C2, C3, C4);
	or(A3, C2, C3, C4);
	or(A4, C2, C3, C4);
	or(A6, C2, C3, C4);
	or(A7, C2, C3, C4);
	
	//and(A_S1, A1, AS);
	and(A_S2, A2, AS);
	and(A_S3, A3, AS);
	and(A_S4, A4, AS);
	//and(A_S5, A5, AS);
	and(A_S6, A6, AS);
	and(A_S7, A7, AS);

// LIGANDO A LETRA "G" NA MATRIZ
	or(G2, C2, C3, C4, C5);
	or(G3, C2, C3, C4, C5);
	or(G4, C2, C3);
	or(G5, C2, C3, C4);
	or(G6, C2, C3, C4);
	
	//and(G_S1, G1, GT);
	and(G_S2, G2, GT);
	and(G_S3, G3, GT);
	and(G_S4, G4, GT);
	and(G_S5, G5, GT);
	and(G_S6, G6, GT);
	//and(G_S7, G7, GT);

// LIGANDO O NUMERO "0" NA MATRIZ
	or(O2, C2, C3, C4);
	or(O3, C2, C3, C4);
	or(O4, C2, C3, C4);
	or(O5, C2, C3, C4);
	or(O6, C2, C3, C4);
	
	not(NOT_AS, AS);
	not(NOT_GT, GT);
	
	//and(O_S1, O1, NOT_AS, NOT_GT);
	and(O_S2, O2, NOT_AS, NOT_GT);
	and(O_S3, O3, NOT_AS, NOT_GT);
	and(O_S4, O4, NOT_AS, NOT_GT);
	and(O_S5, O5, NOT_AS, NOT_GT);
	and(O_S6, O6, NOT_AS, NOT_GT);
	//and(O_S7, O7, NOT_AS, NOT_GT);
	
	or(L2, A_S2, G_S2, O_S2);
	or(L2, A_S2, G_S2, O_S2);
	or(L2, A_S2, G_S2, O_S2);
	or(L2, A_S2, G_S2, O_S2);
	or(L2, A_S2, G_S2, O_S2);
	
endmodule
