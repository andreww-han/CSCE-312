//Add16.tst

load LeftLogicBitshift.hdl,
output-file LeftLogicBitshift.out,
compare-to LeftLogicBitshift.cmp,
output-list x%B1.16.1 y%B1.16.1 out%B1.16.1;

set x %B0000000010101011,
set y %B0000000000000001,
eval,
output;

set x %B1111111111111111,
set y %B0000000000001000,
eval,
output;

set x %B1111111111111111,
set y %B0000000000000000,
eval,
output;

set x %B1010101010101010,
set y %B0000000000000111,
eval,
output;

set x %B0000011111111111,
set y %B0000000000000101,
eval,
output;

set x %B1001001001001001,
set y %B0000000000000011,
eval,
output;

//write more tst commands and also complete the .cmp file 