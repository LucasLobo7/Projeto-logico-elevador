/*
	CIRCUITO ELEVADOR RESIDENCIAL
	Lucas de Oliveira lobo - 119110030 || Victor Hugo Melquíades klein 119110066
	
	-O elevador tem 15 andares , 0-5 Comercial, 6-15 residencial
	-O circuito foi feito para lembrar ao maximo o circuito pratico
	-Para acessar o residencial precisa de um cartão (input cartao_acesso)
	-o output andarprovisorio é so para analise do waveform, na pratica se usaria os output dos displays de 7 segmentos implementados
	-Os unicos componentes de um elevador real que nao foram implementados foram os botões de alarme que para o elevador
	o de fechar porta,e o sensor para garantir que o elevador está no andar correto
	-O tempo que leva para ir de 1 andar para  o proximo, ficou sendo 1 pulso de clock
	-A direção do elevador da prioridade para quem apertou primeiro o botão quando estava parado
*/


module Elevador( 
	input [15:0] botoes,
	output [15:0] ledbotao,
	output [6:0] display_uni, display_dez,
	output [3:0] andarprovisorio,
	input sensor, clock,clear, segurar,cartao_acesso,fechar
	//sensor = sensor de presença na porta, segurar = botao de segurar porta, cartao_acesso =  passe residencal
);
	wire [15:0] estadobotao,cl,botoeschecados;
	wire [3:0] andarbotao,andaratual;
	wire apertado,subirmovendo,sobe_desce,movendo, mover, estadomover, estadodirecao,pare;
	
	controledisplay(andaratual,display_uni,display_dez);
	
	apertarbotao(botoes,cartao_acesso,botoeschecados);
	
	estadoclear(andaratual,clear, pare,cl);

	estadodosbotoes(cl,botoeschecados,clock,estadobotao);
	
	detectabotao(estadobotao,andarbotao,apertado);
	
	detsubida(estadobotao,andaratual,subirmovendo);
	
	detdescida(estadobotao,andaratual,descermovendo);
	
	detecpare(estadobotao,andaratual,apertado,pare);
	
	nandar(clock,~estadodirecao,clear,estadomover,andaratual);
	
	portaaberta(clock,sensor,~pare,segurar,estadomover,mover);
	
	movendo(clock,clear,~sobe_desce,subirmovendo,descermovendo,apertado,mover,estadodirecao,estadomover);
	
	sobeoudesce(andaratual,andarbotao,sobe_desce);
	
	assign ledbotao = estadobotao;
	assign andarprovisorio = andaratual;
	
endmodule 	
