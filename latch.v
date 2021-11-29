module latcht (
	input s,r,
	output q
);
	wire s1,s2;
	assign s2 = ~(s1 | s);
	assign s1 = ~(s2 | r); 
	assign q = s1;
	
	
endmodule 



