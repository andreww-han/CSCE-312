//Negation.tst

load Negation.hdl,
output-file Negation.out,
compare-to Negation.cmp,
output-list in%B1.16.1 out%B1.16.1;

//in=1
set in %B0000000000000001,
eval,
output;

//in=5
set in %B0000000000000101,
eval,
output;

//in=100
set in %B0000000001100100,
eval,
output;

//in=43690
set in %B1010101010101010,
eval,
output;

//in=16385
set in %B0100000000000001,
eval,
output;

//Write more tst commands and also complete the .cmp file accordingly