/*
    Arquitetura de Computadores I - Guia_0103b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8

module Guia_0103;

    // define data
    integer a = 61, b = 53, c = 77 , d = 153, e = 753; // decimal
    reg [9:0] base = 0; // binary

    // Function to convert decimal to base 4
    function [15:0] to_base4;
        input [31:0] dec;
        integer b4;
        integer place;
        begin
            b4 = 0;
            place = 1;
            while (dec > 0) begin
                b4 = b4 + (dec % 4) * place;
                dec = dec / 4;
                place = place * 10;
            end
            to_base4 = b4;
        end
    endfunction
    
    // actions
    initial 
        begin : main
        $display ( "Guia_0103b\n" );

        // Mostra o valor em dec.
        $display ( "a = %0d" , a );
        // Converte para binário.
        base = a;
        // Mostra o valor em diferentes bases.
        $display ( "a = %0b (2) = %0o (8) = %0h (16) = %0X (16) = %0d (4)\n", base, base, base, base, to_base4(a) );

        $display ( "b = %0d" , b );
        base = b;
        $display ( "b = %0b (2) = %0o (8) = %0h (16) = %0X (16)\n", base, base, base, base );

        $display ( "c = %0d" , c );
        base = c;
        $display ( "c = %0b (2) = %0o (8) = %0h (16) = %0X (16)\n", base, base, base, base );

        $display ( "d = %0d" , d );
        base = d;
        $display ( "d = %0b (2) = %0o (8) = %0h (16) = %0X (16)\n", base, base, base, base );

        $display ( "e = %0d" , e );
        base = e;
        $display ( "e = %0b (2) = %0o (8) = %0h (16) = %0X (16)\n", base, base, base, base );
    end // main
endmodule
