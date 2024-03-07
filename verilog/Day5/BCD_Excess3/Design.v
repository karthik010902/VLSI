//Implementaion of BCD to Excess3 by using DataFlow Modelling
module Bcd_excess3(BCD, EXC);
    input [3:0] BCD;
    output [3:0] EXC;

not(w1,BCD[3]);
not(w2,BCD[2]);
not(w3,BCD[1]);
not(w4,BCD[0]);

and(w5,w1,BCD[2],w3,BCD[0]);
and(w6,BCD[3],w2,BCD[1]);
and(w7,BCD[1],BCD[2]);
and(w8,BCD[3],w3);
or(EXC[3],w5,w6,w7,w8);

and(w9,w1,BCD[2],w3,w4);
and(w10,w2,w3,BCD[0]);
and(w11,w2,BCD[1]);
and(w12,BCD[3],BCD[2]);
or(EXC[2],w9,w10,w11,w12);

and(w13,w3,w4);
and(w14,BCD[1],BCD[0]);
or(EXC[1],w13,w14);

and(w15,BCD[1],w4);
or(EXC[0],w13,w15);


endmodule
