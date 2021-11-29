//guarda o valor de cada botao, se está acionado ou nao, 
//liga quando aperta o botao, zera quando chega ao andar e no clear

module estadodosbotoes ( 

	input[15:0] cl, botoes,
	input clock,
	output [15:0] estadobotao
);

	latcht(botoes[0],~cl[0],estadobotao[0]);
	latcht(botoes[1],~cl[1],estadobotao[1]);
	latcht(botoes[2],~cl[2],estadobotao[2]);
	latcht(botoes[3],~cl[3],estadobotao[3]);
	latcht(botoes[4],~cl[4],estadobotao[4]);
	latcht(botoes[5],~cl[5],estadobotao[5]);
	latcht(botoes[6],~cl[6],estadobotao[6]);
	latcht(botoes[7],~cl[7],estadobotao[7]);
	latcht(botoes[8],~cl[8],estadobotao[8]);
	latcht(botoes[9],~cl[9],estadobotao[9]);
	latcht(botoes[10],~cl[10],estadobotao[10]);
	latcht(botoes[11],~cl[11],estadobotao[11]);
	latcht(botoes[12],~cl[12],estadobotao[12]);
	latcht(botoes[13],~cl[13],estadobotao[13]);
	latcht(botoes[14],~cl[14],estadobotao[14]);
	latcht(botoes[15],~cl[15],estadobotao[15]);
	
	
endmodule 