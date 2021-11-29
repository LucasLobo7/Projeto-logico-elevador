//modulo que detecta se o elevador deve parar no andar atual

module detecpare ( 
	input [15:0] botoes,
	input [3:0] andar,
	input apertado,
	output pare // 0 = deve parar, 1 = continua (NBA)
	
);
	wire t;

	Mux16(botoes,andar,t);
	
	assign pare = ~t & apertado;
endmodule 