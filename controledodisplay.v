module controledisplay ( //modulo que controla os displays de 7 segmentos que mostram o andar atual
	input [3:0] A,
	output [6:0] du, dd
);
 


 //display unidade: 
assign du[0] = ~A[2] & ~A[0] | ~A[3] & A[1] | A[2] & A[0] | A[3] & ~A[1];
assign du[1] = ~A[2] | ~A[1] & ~A[0] | ~A[3] & A[1] & A[0] | A[3] & ~A[1] | A[3] & ~A[0];
assign du[2] = ~A[3] & ~A[1] | A[0] | A[2] & A[1] | A[3] & ~A[2];
assign du[3] = ~A[2] & ~A[0] | ~A[3] & ~A[2] & A[1] | ~A[3] & A[1] & ~A[0] | A[2] & ~A[1] & A[0] | A[3] & ~A[1] | A[3] & A[2] & A[0];
assign du[4] = ~A[2] & ~A[0] | ~A[3] & A[1] & ~A[0] | A[3] & ~A[1] & ~A[0];
assign du[5] = ~A[3] & ~A[1] & ~A[0] | ~A[3] & A[2] & ~A[1] | ~A[3] & A[2] & ~A[0] | A[3] & ~A[2] & ~A[1] | A[3] & ~A[2] & ~A[0] | A[3] & A[2] & A[1];
assign du[6] = ~A[3] & ~A[2] & A[1] | A[2] & ~A[1] | A[2] & ~A[0] | A[3] & ~A[1] | A[3] & A[2];
 
//display dezena:
 
assign dd[0] = ~A[3] | ~A[2] & ~A[1];
assign dd[1] = 1;
assign dd[2] = 1;
assign dd[3] = ~A[3] | ~A[2] & ~A[1];
assign dd[4] = ~A[3] | ~A[2] & ~A[1];
assign dd[5] = ~A[3] | ~A[2] & ~A[1];
assign dd[6] = 0;
 
endmodule 