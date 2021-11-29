/*(determina se o elavador deve começar a se mover subindo ou descendo
	para isso usa subtrai (andaratual - andarapertado) 
	o output s é igual ao sinal do resultado da subtração
*/

module sobeoudesce ( 
	
	input [3:0] andar, botao,
	output s // 0 = desce, 1 = sobe
	
);

wire [4:0] lixo,andar5, botao5, botaoc2, resultado;

	assign lixo[0] = 1; 
	assign lixo[1] = 0;
	assign lixo[2] = 0;
	assign lixo[3] = 0;
	assign lixo[4] = 0;


	assign andar5[0] = andar[0];
	assign andar5[1] = andar[1];
	assign andar5[2] = andar[2];
	assign andar5[3] = andar[3];
	assign andar5[4] = 0;
	
	assign botao5[0] = ~botao[0];
	assign botao5[1] = ~botao[1];
	assign botao5[2] = ~botao[2];
	assign botao5[3] = ~botao[3];
	assign botao5[4] = 1;
	
	somador5bits(botao5,lixo,0,botaoc2,);
	somador5bits(andar5,botaoc2,0,resultado,);
	
	assign s = resultado[4];

endmodule
	