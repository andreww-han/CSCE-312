//TST file for Rock Paper Scissors Chip

load RPS.hdl,
compare-to RPS.cmp,
output-file RPS.out,
output-list p1%B3.2.3 p2%B3.2.3 out%B3.1.3;

//Example
set p1 %B11,
set p2 %B10,
eval,
output;

