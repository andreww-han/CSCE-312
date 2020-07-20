//Andrew Han
// Filename = div.tst

load Div.hack,
output-file Div.out,
compare-to Div.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set RAM[0] 1,   // Set test arguments
set RAM[1] 1,
set RAM[2] -1;  // Test that program initialized product to 0
repeat 20 {
  ticktock;
}
set RAM[0] 1,   // Restore arguments in case program used them as loop counter
set RAM[1] 1,
output;

set PC 0,
set RAM[0] 2,   // Set test arguments
set RAM[1] 2,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 20 {
  ticktock;
}
set RAM[0] 2,   // Restore arguments in case program used them as loop counter
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 0,   // Set test arguments
set RAM[1] 2,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 30 {
  ticktock;
}
set RAM[0] 0,   // Restore arguments in case program used them as loop counter
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 9,   // Set test arguments
set RAM[1] 3,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 30 {
  ticktock;
}
set RAM[0] 9,   // Restore arguments in case program used them as loop counter
set RAM[1] 3,
output;

set PC 0,
set RAM[0] 15,   // Set test arguments
set RAM[1] 300,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 50 {
  ticktock;
}
set RAM[0] 15,   // Restore arguments in case program used them as loop counter
set RAM[1] 300,
output;

set PC 0,
set RAM[0] 290,   // Set test arguments
set RAM[1] 20,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 120 {
  ticktock;
}
set RAM[0] 290,   // Restore arguments in case program used them as loop counter
set RAM[1] 20,
output;

set PC 0,
set RAM[0] 1000,   // Set test arguments
set RAM[1] 1000,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 30 {
  ticktock;
}
set RAM[0] 1000,   // Restore arguments in case program used them as loop counter
set RAM[1] 1000,
output;

