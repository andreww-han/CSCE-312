load AddSub.hdl,
output-file AddSub.out,
compare-to AddSub.cmp,
output-list a%B1.4.1 b%B1.4.1 sub%B2.1.2 out%B1.4.1 carry%B3.1.3;

set a %B0000,
set b %B0000,
set sub 0,
eval,
output;

//5 + (- 3) -> 3 is in 2s complement
set a %B0101,
set b %B1101,
set sub 0,
eval,
output;

//5 - 3 -> 3 is in binary
set a %B0101,
set b %B0011,
set sub 1,
eval,
output;

//2 + 4
set a %B0010,
set b %B0100,
set sub 0,
eval,
output;

//2 - 4
set a %B0010,
set b %B0100,
set sub 1,
eval,
output;

//8 - 0
set a %B1000,
set b %B0000,
set sub 1,
eval,
output;

//6 - 2
set a %B0110,
set b %B0010,
set sub 1,
eval,
output;

//4 + (-1) -> 2s complement
set a %B0100,
set b %B1111,
set sub 0,
eval,
output;

//Complete the rest of the tst file 
