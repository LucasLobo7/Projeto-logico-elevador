//Determina a direção para a qual o elevador deve ir quando começa a se mover quando iniciar o ciclo de movimento

module movendo3(
input subirP, Nparado,
output reg subir
); 

    always@(posedge Nparado)
    begin
        subir = subirP;
    end

endmodule 