`timescale 1 ns/1 ns

module Mux_4x1_1bit_gate(A1, B1,  C1,  D1,  S1, S0, Out1);
    
   input A1, B1, C1,  D1;
   input S1, S0;
   output Out1;

   wire N1, N2, N3, N4, N5, N6, N7, N8, N9 ,N10, N11, N12;

   not Inv_1(N1, S1);
   not Inv_2(N2, S0);

   and And_1(N3, A1, N1);
   and And_2(N4, N3, N2);
   and And_3(N5, B1, N1);
   and And_4(N6, N5, S0);
   and And_5(N7, C1, S1);
   and And_6(N8, N7, N2);
   and And_7(N9, D1, S1);
   and And_8(N10, N9, S0);

   or Or_1(N11,N4, N6);
   or Or_2(N12, N8, N10);
   or Or_3(Out1, N11, N12);
   
endmodule
