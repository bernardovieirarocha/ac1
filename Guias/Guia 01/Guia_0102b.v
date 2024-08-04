/*
    Arquitetura de Computadores I - Guia_0102b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8


module Guia_0102;
    // define data
    integer decimal = 0;
    reg [7:0] a = 8'b00010101, b = 8'b00011011, c = 8'b00010010, d = 8'b00101011, e = 8'b00110111; // binary (bits - little endian)
    
    // actions
    initial 
        begin : main
            $display ( "Guia_0102b\n" );

            // Mostra o valor em binário.
            $display( "a = %b", a[4:0] );
            // Converte para decimal.
            decimal = a;
            // Mostra o valor em decimal.
            $display( "decimal = %-d\n", decimal );

            $display( "b = %b", b[4:0] );
            decimal = b;
            $display( "decimal = %-d\n", decimal );

            $display( "c = %b", c[4:0] );
            decimal = c;
            $display( "decimal = %-d\n", decimal );

            $display( "d = %b", d[5:0] );
            decimal = d;
            $display( "decimal = %-d\n", decimal );

            $display( "e = %b", e[5:0] );
            decimal = e;
            $display( "decimal = %-d\n", decimal );
    end // main

endmodule