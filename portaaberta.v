/*um timer que deixa a porta aberta por 4 pulsos de clock
o timer reseta quando o elevador para no andar, alguem é detectado no sensor da porta
ou aperta o botao de segurar a porta
O sensor e botao so funcionam caso o elevador estiver parado
*/ 

module portaaberta ( 

	input clock, sensor, chegada, segurar,estadomover,
	output mover

);

	wire clear, ck, segura, fecharchecado;
	wire [3:0] 	Q;
	assign segura = ~estadomover & (sensor | segurar);
	

	assign clear = ~(chegada | segura);
	assign ck = clock & ~Q[3];
	
	flipflopjk(1,0,ck,clear,0,Q[0]);
	flipflopjk(Q[0],~Q[0],ck,clear,0,Q[1]);
	flipflopjk(Q[1],~Q[1],ck,clear,0,Q[2]);
	flipflopjk(Q[2],~Q[2],ck,clear,0,Q[3]);
	
	assign mover =  Q[3];
	
endmodule 