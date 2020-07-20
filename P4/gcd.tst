// Name and UIN
// Filename = gcd.tst

load gcd.hack,
output-file gcd.out,
compare-to gcd.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set RAM[0] 9,
set RAM[1] 6,
set RAM[2] 0,
repeat 200 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 37,
set RAM[1] 13,
set RAM[2] 0,
repeat 300 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 729,
set RAM[1] 15,
set RAM[2] 0,
repeat 600 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 11,
set RAM[1] 21,
set RAM[2] 0,
repeat 300 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 18,
set RAM[1] 66,
set RAM[2] 0,
repeat 300 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 22,
set RAM[1] 560,
set RAM[2] 0,
repeat 600 {
	ticktock;
}
output;