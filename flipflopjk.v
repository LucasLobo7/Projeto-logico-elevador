module flipflopjk(
	input j,k,ck,clr,ps,
	output reg Q
);


	always@(posedge ck or negedge clr or posedge ps)
	begin
		if(!clr)
			Q = 0;	
		else if(ps)
			Q = 1;		
		else
			begin 
			case({j,k})
				0: Q = Q;
				1: Q = 0;
				2: Q = 1;
				3: Q = ~Q;
			endcase
		end
	end

		
endmodule
