module somaBit(
input pValor, sValor, vemUm,
output saida, vaiUm
);

	assign saida = pValor ^ sValor ^ vemUm;
	assign vaiUm = (vemUm & (pValor | sValor)) | (pValor & sValor);
	
endmodule 