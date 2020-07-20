// Andrew Han 227009495

// File name: mod.asm

// This program calculates the modulo of two given numbers a and b, which is a%b in math. 
// The value of a is stored in RAM[0] (R0), and the value of b is stored in RAM[1] (R1). 
// The value a is non-negative integer and b is positive integer. 
// The modulo value is stored in RAM[2] (R2).



// Put your code below this line

@R0
D = M
@R1
D = D - M    //checks if the initial value of a is less than b
@CHECK
D;JLT
@R1
D = D + M    //restores value of a so that the loop can begin
(LOOP)
@R1
D = D - M
@MOD
D;JLT
@LOOP
0;JMP

(CHECK)     //initial value of a < b so R2 = a
@R1
D = D + M
@R2
M = D
@END
0;JMP
(MOD)
@R1
D = D + M
@R2
M = D
(END)
@END
0;JMP