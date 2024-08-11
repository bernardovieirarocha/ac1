/*
    Arquitetura de Computadores I - Guia_0101b.v
        853733 - Bernardo Vieira Rocha
*/

module Guia_0205;
    // define data

    // Operandos a pelo b
    reg [7:0] a1 = 8'b0101_1100 ; // binary
    reg [7:0] b1 = 8'b0010_0110 ; // binary

    reg [7:0] a2 = 8'b1000_1010 ; // binary
    reg [7:0] b2 = 8'b0010_0100 ; // binary

    reg [7:0] a3 = 8'b0101_1010 ; // binary
    reg [7:0] b3 = 8'b0010_1010 ; // binary

    reg [7:0] a4 = 8'b10111_010 ; // binary
    reg [7:0] b4 = 8'b00011_011 ; // binary

    reg [7:0] a5 = 8'b01101011 ; // binary
    reg [7:0] b5 = 8'b00001101 ; // binary

    // Resultado das operacoes
    reg [7:0] o1;
    reg [7:0] o2;
    reg [15:0] o3; 
    reg [15:0] o4; 
    reg [7:0] o5;
    
    // actions
    initial
        begin : main
            $display ( "Guia0205b \n" );
            o1 = a1 + b1;
            o2 = a2 - b2;
            o3 = a3 * b3;
            o4 = (a4 << 8) / b4; 
            o5 = a5 % b5;
            $display ( "a = a1 + b1 = %4b.%4b ", o1[7:4], o1[3:0]);
            $display ( "b = a2 - b2 = %4b.%4b ", o2[7:4], o2[3:0]);
            $display("c = a3 * b3 = %b.%b", o3[15:8], o3[7:0]);
            $display("d = a4 / b4 = %b.%b", o4[15:8], o4[7:2]); // fica repetindo 111000 ate o infinito 
            $display("e = a mod b = %b\n", o5);
        end // main
endmodule // Guia_0205