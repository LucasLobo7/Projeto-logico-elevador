//Determina quando o elevador deve começar o ciclo de mover

module movendo2(
input apertado, Nparado,
output NP
); 

assign NP = apertado ? 1: Nparado;

endmodule
 