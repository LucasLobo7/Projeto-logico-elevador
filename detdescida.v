//Detecta se tem algum andar acionado abaixo
module detdescida ( 

	input [15:0] botao,
	input [3:0] andar,
	output descida
);

	wire [15:0] fio;
    assign fio[0] = 0;
    assign fio[1] = fio[0] | botao[0];
    assign fio[2] = fio[1] | botao[1];
    assign fio[3] = fio[2] | botao[2];
    assign fio[4] = fio[3] | botao[3];
    assign fio[5] = fio[4] | botao[4];
    assign fio[6] = fio[5] | botao[5];
    assign fio[7] = fio[6] | botao[6];
    assign fio[8] = fio[7] | botao[7];
    assign fio[9] = fio[8] | botao[8];
    assign fio[10] = fio[9] | botao[9];
    assign fio[11] = fio[10] | botao[10];
    assign fio[12] = fio[11] | botao[11];
    assign fio[13] = fio[12] | botao[12];
    assign fio[14] = fio[13] | botao[13];
    assign fio[15] = fio[14] | botao[14];
	 
	 Mux16(fio,andar,descida);
	 
endmodule 