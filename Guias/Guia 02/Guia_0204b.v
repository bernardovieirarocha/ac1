/*
    Arquitetura de Computadores I - Guia_0101b.v
        853733 - Bernardo Vieira Rocha
*/

module Guia_0204;
    // define data
    reg [5:0]  b1  =  6'o71  ; // oct // original em quaternario = 0.321
    reg [9:0] b2  = 12'h3d2 ;
    reg [8:0]  b3  =  9'o751 ;
    reg [8:0]  b4  =  9'o345 ; =
    integer  b41 =  3'o7   ; // integer
    reg [11:0] b5  = 12'hA5E ;
    integer    b51 =  4'hF   ; // integer
    // actions
    initial
        begin : main
        $display ( "Guia_0204b \n"  );
        $display("a = 0.%b (2)", b1);
        $display ( "b =  0.%o%o%o%o%o   (4)   ", b2[9:8], b2[7:6], b2[5:4], b2[3:2], b2[1:0]);
        $display ( "c =  0.%8b (2)              ", b3[8:0]);
        $display ( "d = %d%d.%d%d%d%d%d  (4)    ", b41[3:2], b41[1:0], b4[8:7], b4[6:5], b4[4:3], b4[2:1], b4[2:1]);
        $display ( "e = %o%o.%o%o%o%o%o%o   (4) ", b51[3:2], b51[1:0], b5[11:10], b5[9:8], b5[7:6], b5[5:4], b5[3:2], b5[1:0]);
        end // main
endmodule // Guia_0204