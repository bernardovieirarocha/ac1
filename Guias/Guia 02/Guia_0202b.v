/*
    Arquitetura de Computadores I - Guia_0101b.v
        853733 - Bernardo Vieira Rocha
*/

// Enconding: UTF-8

module Guia_0202;
  real numbers[0:4]; // Numero das questoes
  reg [7:0] letters[0:4]; // Respectivas letras
  reg [15:0] binary; // Numero Binario 2 vezes 8bits para ambas as partes.
  real x, frac_part; // temp real e parte fracionaria 
  integer int_part, temp_int_part, i, y, bit_pos; // Parte inteira e variaveis de controle

  initial begin
    // Inicializa os números
    numbers[0] = 0.375;
    numbers[1] = 2.125;
    numbers[2] = 3.625;
    numbers[3] = 5.03125;
    numbers[4] = 6.75;

      // Inicializa as letras
    letters[0] = "a";
    letters[1] = "b";
    letters[2] = "c";
    letters[3] = "d";
    letters[4] = "e";

    $display("Guia_0202b\n");

    for (i = 0; i < 5; i = i + 1) begin
      x = numbers[i];
      binary = 0;

      // Separar a parte inteira e a parte fracionária
      int_part = $floor(x);
      frac_part = x - int_part;

      // Converte parte inteira para binário
      for (bit_pos = 15; bit_pos >= 8; bit_pos = bit_pos - 1) begin
        binary[bit_pos] = int_part[bit_pos - 8];
      end

      // Converte parte fracionária para binário
      for (y = 7; y >= 0; y = y - 1) begin
        frac_part = frac_part * 2;
        if (frac_part >= 1) begin
          binary[y] = 1;
          frac_part = frac_part - 1;
        end else begin
          binary[y] = 0;
        end
      end

      // Imprime o número binário com o ponto na posição correta
      $write("%c = %f (10) = ", letters[i], x);
      for (y = 15; y >= 0; y = y - 1) begin
        if (y == 7) $write(".");
        $write("%b", binary[y]);
      end
      $write(" (2)\n");
    end
  end
endmodule // Guia_0202