/*
    Arquitetura de Computadores I - Guia_0203b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8

module Guia_0203;
    // define data
    reg [7:0] b1  = 8'b00011110 ;

    reg [7:0] b2  = 8'b00101001 ;

    reg [7:0] b3  = 8'b10011000 ;

    reg [7:0] b4  = 8'b1_111011 ;

    reg [7:0] b5  = 8'b11011001 ;
    // actions
    initial
        begin : main
            $display ( "Guia_0203b \n" );
            $display ( "a = %o.%o%o%o (4)  ", b1[7:6], b1[5:4], b1[3:2], b1[1:0] );
            $display ( "b = %o.%o%o (8) ", b2[7:6],b2[5:3],b2[2:0] );
            $display ( "c = 0.%x%x (16)", b3[7:4],b3[3:0] );
            $display ( "d = %o.%o%o (8) ", b4[7:6],b4[5:3],b4[2:0] );
            $display ( "e = %x.%x (16)", b5[7:4],b5[3:0] );


        end // main
endmodule // Guia_0203