//Detecta se tem algum andar acionado acima

module detsubida ( 

	input [15:0] botao,
	input [3:0] andar,
	output subida
);

	wire [15:0] fio;

    assign fio[15] = 0;
    assign fio[14] = fio[15] | botao[15];
    assign fio[13] = fio[14] | botao[14];
    assign fio[12] = fio[13] | botao[13];
    assign fio[11] = fio[12] | botao[12];
    assign fio[10] = fio[11] | botao[11];
    assign fio[9] = fio[10] | botao[10];
    assign fio[8] = fio[9] | botao[9];
    assign fio[7] = fio[8] | botao[8];
    assign fio[6] = fio[7] | botao[7];
    assign fio[5] = fio[6] | botao[6];
    assign fio[4] = fio[5] | botao[5];
    assign fio[3] = fio[4] | botao[4];
    assign fio[2] = fio[3] | botao[3];
    assign fio[1] = fio[2] | botao[2];
    assign fio[0] = fio[1] | botao[1];
	 
	 Mux16(fio,andar,subida);
	 
endmodule 