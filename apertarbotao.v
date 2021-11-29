//Modulo que determina se uma pessoa pode acessar os andares residenciais

module apertarbotao ( 
	input [15:0] botao,
	input checagem,
	output [15:0] botaochecado
);
	assign botaochecado[0] = botao[0];
	assign botaochecado[1] = botao[1];
	assign botaochecado[2] = botao[2]; 
	assign botaochecado[3] = botao[3]; 
	assign botaochecado[4] = botao[4]; 
	assign botaochecado[5] = botao[5]; 
	assign botaochecado[6] = botao[6] & checagem;
	assign botaochecado[7] = botao[7] & checagem;
	assign botaochecado[8] = botao[8] & checagem;
	assign botaochecado[9] = botao[9] & checagem;
	assign botaochecado[10] = botao[10] & checagem;
	assign botaochecado[11] = botao[11] & checagem;
	assign botaochecado[12] = botao[12] & checagem;
	assign botaochecado[13] = botao[13] & checagem;
	assign botaochecado[14] = botao[14] & checagem;
	assign botaochecado[15] = botao[15] & checagem;

endmodule	