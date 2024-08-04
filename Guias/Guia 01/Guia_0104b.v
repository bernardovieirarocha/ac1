/*
    Arquitetura de Computadores I - Guia_0104b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8


module Guia_0104;
    // define data
    reg [7:0]  a = 6'b10100, b = 6'b11010, c = 6'b100111, d = 6'b100101, e = 6'b101101 ; // binary (bits - little endian)


    // actions
    initial 
        begin : main
            $display ( "Guia_0104b\n" );

            $display ("a = %0b ", a);
            $display ( "a = [%2b] [%2b] [%2b] = %d%d%0d (4)\n", a[5:4], a[3:2], a[1:0], a[5:4], a[3:2], a[1:0] );

            $display ("b = %0b ", b);
            $display ( "b = [%3b] [%3b] = %d%0d (8)\n", b[5:3], b[2:0], b[5:3], b[2:0] );

            $display ( "c = %0b" , c );
            $display ( "c = [%4b] [%4b] = %d%0d (16)\n", c[7:4], c[3:0], c[7:4], c[3:0] );

            $display ( "d = %0b" , d );
            $display ( "d = [%3b] [%3b] = %d%0d (8)\n", d[5:3], d[2:0], d[5:3], d[2:0] );

            $display ( "e = %0b" , e );
            $display ( "e = [%2b] [%2b] [%2b] = %d%d%0d (4)", e[5:4], e[3:2], e[1:0], e[5:4], e[3:2], e[1:0] );
    end // main


endmodule