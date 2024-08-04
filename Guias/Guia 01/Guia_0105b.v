/*
    Arquitetura de Computadores I - Guia_0105b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8

module Guia_0105;
// define data
   integer x = 0; // decimal
   reg [0:7][7:0] a = "PUC-M.G."; // char array[8] (8x8 bits - little Endian)
   reg [0:6][7:0] b = "2024-02"; // char array[7] (7x8 bits - little Endian)
   reg [0:13][7:0] c = "Belo Horizonte"; // char array[14] (14x8 bits - little Endian)
   reg [0:4][7:0] d = { 8'o156 , 8'o157 , 8'o151 , 8'o164 , 8'o145}; // octal
   reg [0:4][7:0] e = { 8'h4d , 8'h61 , 8'h6e , 8'h68 , 8'h61}; // hexadecimal
// actions
   initial
      begin : main
      $display ( "Guia_0105b\n" );
      
      $write ( "a = \"%s\" = " , a);
      for ( x = 0; x < 8; ++x ) begin
        $write ( "%h " , a[x] );
      end
      $write( "(16_ASCII)\n" );

      $write ( "b = \"%s\" = " , b);
      for ( x = 0; x < 7; ++x ) begin
        $write ( "%h " , b[x] );
      end
      $write( "(16_ASCII)\n" );

      $write ( "c = \"%s\" = " , c);
      for (x = 0; x < 14; ++x ) begin
        $write ( "%b " , c[x] );
      end
      $write( "(2_ASCII)\n" );

      $write ( "d = " ); // na base octal
      for (x = 0; x < 5 ; ++x ) begin
         $write ( "%o " , d[x] );
      end
      $write ( "(8) = " );
      for ( x = 0; x < 5; ++x ) begin
        $write ( "%c " , d[x]);
      end
      $write( "(ASCII)\n" );

      $write ( "e = " ); // na base hexadecimal
      for (x = 0; x < 5 ; ++x ) begin
         $write ( "%h " , e[x] );
      end
      $write ( "(16) = " );
      for (x = 0; x < 5; ++x) begin
         $write ( "%c " , e[x] );
      end
      $write( "(ASCII)\n" );
    end // main

endmodule // Guia_0105