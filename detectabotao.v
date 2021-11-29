// determina o andar do botao apertado, passando para um array d 4 bits

module detectabotao ( 

input [15:0] B,
output [3:0] andar,
output apertado
);

    assign andar[3] = B[8] | B[9] | B[10] | B[11] | B[12] | B[13] | B[14] | B[15];
    assign andar[2] = B[4] | B[5] | B[6] | B[7] | B[12] | B[13] | B[14] | B[15];
    assign andar[1] = B[2] | B[3] | B[6] | B[7] | B[10] | B[11] | B[14] | B[15];
    assign andar[0] = B[1] | B[3] | B[5] | B[7] | B[9] | B[11] | B[13] | B[15];

    assign apertado = B[0] | andar[0] | andar[1] | andar[2] | andar[3];

endmodule 