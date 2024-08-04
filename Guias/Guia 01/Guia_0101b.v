/*
    Arquitetura de Computadores I - Guia_0101b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8

module Guia_0101;

    integer a = 26, b = 53, c = 713, d = 213, e = 365;
    reg [9:0] bin = 0; // binary (bits - little endian)
    
    initial 
        begin : main
            $display ( "Guia_0101b\n" );

            $display ( "a = %-d" , a );
            bin = a;
            $display ( "bin = %b\n", bin[4:0] );

            $display ( "b = %-d" , b );
            bin = b;
            $display ( "bin = %b\n", bin[5:0] );

            $display ( "c = %-d" , c );
            bin = c;
            $display ( "bin = %b\n", bin );

            $display ( "d = %-d" , d );
            bin = d;
            $display ( "bin = %b\n", bin[7:0] );

            $display ( "e = %-d" , e );
            bin = e;
            $display ( "bin = %b\n", bin[8:0] );        
    end // main

endmodule // Guia_0101