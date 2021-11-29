//zera os flipflops do estado dos botões com o sinal de clear ou quando o elevador chega ao andar 

module estadoclear ( 
	
	input [3:0] a, //a = andaratual
	input clear, pare,
	output [15:0] cl
);
	 
	assign cl[0] = clear & ~(~a[3] & ~a[2] & ~a[1] & ~a[0]);
	assign cl[1] = clear & ~(~a[3] & ~a[2] & ~a[1] & a[0]);
	assign cl[2] = clear & ~(~a[3] & ~a[2] & a[1] & ~a[0]);
	assign cl[3] = clear & ~(~a[3] & ~a[2] & a[1] & a[0]);
	assign cl[4] = clear & ~(~a[3] & a[2] & ~a[1] & ~a[0]);
	assign cl[5] = clear & ~(~a[3] & a[2] & ~a[1] & a[0]);
	assign cl[6] = clear & ~(~a[3] & a[2] & a[1] & ~a[0]);
	assign cl[7] = clear & ~(~a[3] & a[2] & a[1] & a[0]);
	assign cl[8] = clear & ~(a[3] & ~a[2] & ~a[1] & ~a[0]);
	assign cl[9] = clear & ~(a[3] & ~a[2] & ~a[1] & a[0]);
	assign cl[10] = clear & ~(a[3] & ~a[2] & a[1] & ~a[0]);
	assign cl[11] = clear & ~(a[3] & ~a[2] & a[1] & a[0]);
	assign cl[12] = clear & ~(a[3] & a[2] & ~a[1] & ~a[0]);
	assign cl[13] = clear & ~(a[3] & a[2] & ~a[1] & a[0]);
	assign cl[14] = clear & ~(a[3] & a[2] & a[1] & ~a[0]);
	assign cl[15] = clear & ~(a[3] & a[2] & a[1] & a[0]);
endmodule 	