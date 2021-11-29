//guarda o  andar atual, e aumenta e diminuir o numero de andares 
//contador sicrono, modulo 16, crescente e decrescente

module nandar ( 

	input clk, C,clear,habilitar, //C=0 elevador subindo, C = 1 elevador descendo
	output [3:0] S
);

	wire [3:0] D;
	
	assign clock = habilitar & clk;
    
	flipflopjk(D[0],~D[0],clock,clear,0,S[0]);
	flipflopjk(D[1],~D[1],clock,clear,0,S[1]);
	flipflopjk(D[2],~D[2],clock,clear,0,S[2]);
	flipflopjk(D[3],~D[3],clock,clear,0,S[3]);
	
	assign D[0] = ~S[0];
	assign D[1] = ~C & ~S[1] & S[0] | ~C  & S[1] & ~S[0] | C & ~S[1] & ~S[0] | C & S[1] & S[0];
	assign D[2] = ~C & ~S[2] & S[1] & S[0] | ~C & S[2] & ~S[1] | S[2] & S[1] & ~S[0] | C & ~S[2] & ~S[1] & ~S[0] | C & S[2] & S[0];
	assign D[3] = ~C & S[2] & S[1] & S[0] | ~C & S[3] | S[3] & S[0] | S[3] & S[1] | S[3] &	S[2];
	 
endmodule 
