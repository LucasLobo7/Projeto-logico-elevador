//determina a direção para a qual o elevador deve ir no ciclo de movimento e se deve parar

module movendo1(
input clock,CLR, subirA, descerA,
output  subir,
output Nparado
); 

    wire NP;

    assign Nparado = CLR ? NP : 0;

    assign NP = subirA | descerA;
	 
    flipflopjk(~descerA,~subirA,clock,CLR,0,subir);

endmodule

