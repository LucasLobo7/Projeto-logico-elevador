//Une os modulos de movimento (movendo1,movendo2,movendo3) em um unico modulo

module movendo(
input clock,clr,subirP, subirmovendo, descermovendo, apertado, NparadoAndar,
output estadodirecao, estadomover 
); 
    wire subir1, Nparado1, subir2, Nparado2;

    movendo1(clock,clr,subirmovendo, descermovendo, subir1, Nparado1);
    movendo2(apertado, Nparado1, Nparado2);
    movendo3(subirP, Nparado2, subir2);

    assign estadodirecao = Nparado2 ? subir1 : subir2;


    assign estadomover = (Nparado2 & NparadoAndar);


endmodule 