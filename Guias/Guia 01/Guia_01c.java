/*
    Arquitetura de Computadores I - Guia_01c.java
        853733 - Bernardo Vieira Rocha
*/

// Encondig UTF-8

public class Guia_01c {
    // Contador dos erros
    private static int errors = 0;

    /*
     Testar se dois valores são iguais:
        @param x - primeiro valor
        @param y - segundo valor
    */
    public static void test_equals(Object x, Object y) {
        if ( ( "" + x ).compareTo( "" + y ) != 0 )
            errors = errors + 1;
    } // end test_equals ( )

    /*
     Exibir o total de erros.
        @return mensagem com o total de erros
    */
    public static String test_report( ) 
    {
        return ( "" + errors );
    } // end test_report ( )

    /*
     Converter valor decimal para binario.
        @return binario equivalente
       @param value - valor decimal
    */
    public static String dec2bin( int value ) {
        int binary = 0;
        int bit = 0;
        int pos = 1;
        String result = "";

        while ( value > 0 ) {
            bit = value % 2;
            value = value / 2;
            binary = binary + bit * pos;
            pos = pos * 10;
            result = bit + result;
        }

        return result;
    } // end dec2bin ( )

    public static int bin2dec( String value) {
        int tamanho = 0;
        int decimal = 0;
        int bit = 0;

        tamanho = value.length();

        for (int i =0 ; i < tamanho; i++) {
            bit = Integer.parseInt(String.valueOf(value.charAt(i)));
            decimal = decimal + bit * (int) Math.pow(2, tamanho - i - 1);
        } // end for

        return decimal;
    }

    /*
     Converter valor decimal para base indicada.
       @return base para a conversao
       @param value - valor decimal
    */
    public static String dec2base( int value, int base) {
        int bit = 0;
        int pos = 1;
        char digit;
        StringBuilder result = new StringBuilder();

        while (value > 0) {
            bit = value % base;
            if ( bit > 9 ) {
                // Conversao para hexadecimal (A-F) usando do ASCII.
                digit = (char) ('A' + (bit - 10));
                result.insert(0, digit);
            } else {
                result.insert(0, bit);
            }
            value = value / base;
            pos = pos * 10;
        }
        return result.toString();
    } // end dec2base ( )

    /*
     Converter valor binario para base indicada.
        @return valor equivalente na base indicada
        @param value - valor binario
        @param base - para a conversao
    */
    public static String bin2base( String value, int base) {
        int decimal = bin2dec(value);
        return dec2base(decimal, base);
    } // end bin2base ( )

    /*
      Converter valor em ASCII para hexadecimal.
        @return hexadecimal equivalente
        @param value - caractere(s) em codigo ASCII
    */
    public static String ASCII2hex(String value) {
        StringBuilder res = new StringBuilder();
        int valueAscii = 0;
        String hex;

        for (int i = 0 ; i < value.length(); ++i) {
            valueAscii = (int) value.charAt(i);
            hex = dec2base(valueAscii, 16);
            res.append(hex).append(" ");
        }
        return res.toString();
    } // end ASCII2hex ( )


    /*
     Converter valor em hexadecimal para ASCII.
       @return caractere(s) em codigo ASCII
       @param value - hexadecimal equivalente(s)
     */
    public static String hex2ASCII(String value) {
        StringBuilder res = new StringBuilder();
        String[] hexValues = value.split(" ");
        int ascii;

        for (String hex : hexValues) {
            // Conversao de hexadecimal para decimal.
            ascii = Integer.parseInt(hex, 16);
            res.append((char) ascii);
        }
        return res.toString();
    } // end hex2ASCII

    public static void main(String[] args) {
        System.out.println("Guia_01 - Tests");
        System.out.println(" 853733 - Bernardo Vieira Rocha ");
        System.out.println(" ");

        // Testes
        test_equals(dec2bin(26), "11010");
        test_equals(dec2bin(53), "110101");
        test_equals(dec2bin(713 ), "1011001001");
        test_equals(dec2bin(213), "11010101");
        test_equals(dec2bin(365), "101101101");
        System.out.println("Q1 - errorTotal: " + test_report());

        test_equals(bin2dec("10101"), 21 );
        test_equals(bin2dec("11011"), 27 );
        test_equals(bin2dec("10010"), 18 );
        test_equals(bin2dec("101011"), 43 );
        test_equals(bin2dec("110111"), 55 );
        System.out.println("Q2 - errorTotal: " + test_report());

        // No arquivo verilog somente a função display(como no exemplo do guia) não é capaz de converter para a base 4.
        test_equals(dec2base(61, 4), "331");
        test_equals(dec2base(53, 8), "65");
        test_equals(dec2base(77, 16), "4D");
        test_equals(dec2base(153, 16), "99");
        test_equals(dec2base(753, 16), "2F1");
        System.out.println("Q3 - errorTotal: " + test_report());

        test_equals(bin2base("10100", 4), "110");
        test_equals(bin2base("11010", 8), "32");
        test_equals(bin2base("100111", 16), "27");
        test_equals(bin2base("100101", 8), "45");
        test_equals(bin2base("101101", 4), "231");
        System.out.println("Q4 - errorTotal: " + test_report());

        test_equals(ASCII2hex("PUC-M.G."), "50 55 43 2D 4D 2E 47 2E ");
        test_equals(ASCII2hex("2024-02"), "32 30 32 34 2D 30 32 ");
        // test_equals(ASCII2hex("Belo Horizonte",
        // "01000010 01100101 01101100 01101111 00100000 01001000 01101111 01110010 01101001 01111010 01101111 01101110 01110100 01100101 ");
        // test_equals(hex2ASCII("156 157 151 164 145"), "n o i t e"); OBS.: 156 e' o primeiro octal (0o156)!
        test_equals(hex2ASCII("4d 61 6e 68 61"), "Manha"); // OBS.: 4D e' o primeiro hexadecimal (0x4D)!
        System.out.print("Q5 - errorTotal: " + test_report());

        System.out.print ( "\n\nApertar ENTER para terminar." );
        System.console ( ).readLine ( );
    }
}