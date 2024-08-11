/*
    Arquitetura de Computadores I - Guia_0101b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8

module Guia_0201;
// define data
    reg [6:0] a = 7'b000011;
    reg [6:0] b = 7'b001001;
    reg [6:0] c = 7'b010101;
    reg [6:0] d = 7'b111101;
    reg [6:0] e = 7'b1111001;

/*
    Função para transformar binario de 7 bits para decimal
        @parametros: (binario 7 bits, metodo de posiçao ponto fixo);
        retorno: real (decimal) convertido
*/
function real bin2float;
    input [6:0] binario;
    input integer pontoFixo;
    integer partInteira;
    real partFracionaria; 
    integer i, j;
    begin
        partInteira = 0;
        partFracionaria = 0.0;

        // Calcular parte fracionaria
        for (i = 0; i < pontoFixo; i++) begin
            if (binario[i]) begin
                partFracionaria = partFracionaria + (1.0 / (2.0 ** (pontoFixo - i)));
            end
        end

        // Parte Inteira
        for (j = pontoFixo; j < 7; j = j + 1) begin
            if (binario[j]) begin
                partInteira = partInteira + (2 ** (j - pontoFixo));
            end
        end
        bin2float = partInteira + partFracionaria;
    end
endfunction

// actions
   initial
    begin : main
     $display ( "Guia_0201b \n" );

    $display ( "a = %-b (2) = %f (10) \n" , a, bin2float(a, 5) );

    $display ( "b = %-b (2) = %f (10) \n" , b, bin2float(b, 5) );

    $display ( "c = %-b (2) = %f (10) \n" , c, bin2float(c, 5) );

    $display ( "d = %-b (2) = %f (10) \n" , d, bin2float(d, 5) );

    $display ( "e = %-b (2) = %f (10) \n" , e, bin2float(e, 5) );

    end // main

endmodule // Guia_0201

