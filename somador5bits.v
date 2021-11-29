module somador5bits(
input [4:0] Ea, Eb,
input vemUm,
output [4:0] S,
output estouro
);

	wire [3:0] v;
	
	somaBit(Ea[0], Eb[0], vemUm, S[0], v[0]);
	somaBit(Ea[1], Eb[1], v[0], S[1], v[1]);
	somaBit(Ea[2], Eb[2], v[1], S[2], v[2]);
	somaBit(Ea[3], Eb[3], v[2], S[3], v[3]);
	somaBit(Ea[4], Eb[4], v[3], S[4], estouro);
	
endmodule 