//Andrew Han 227009495

// File name: gcd.asm

// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in RAM[0] (R0) and RAM[1] (R1). 
// The gcd is stored in RAM[2] (R2).



// Put your code below this line

@R0
D = M
@i     //this will act as the first integer
M = D
@R1
D = M
@j   //this will act as the second integer
M = D

(LOOP)
@i
D = M
@CHECKA  //checks if a = 0, then gcd(a,b) = b
D;JEQ
@j
D = M
@CHECKB //checks if b = 0, then gcd(a,b) = a
D;JEQ

@i
D = M
@j
D = D - M    //checks if the initial value of a is less than b
@MODCHECK
D;JLT
@j
D = D + M    //restores value of a so that the loop can begin
(INNER_LOOP)
@j
D = D - M
@MOD
D;JLT
@INNER_LOOP
0;JMP

(MODCHECK)     //initial value of a < b so R2 = a
@j
D = D + M
@temp
M = D
@j
D = M
@i
M = D
@temp
D = M
@j
M = D
@LOOP
0;JMP

(MOD)  //modulo calculated and variables are reassigned the correct values to continue in the loop
@j
D = D + M
@temp
M = D
@j
D = M
@i
M = D
@temp 
D = M
@j
M = D
@LOOP
0;JMP

(CHECKA) //checks if a = 0, then gcd(a,b) = b
@j
D = M
@R2
M = D
@END
0;JMP

(CHECKB) //checks if b = 0, then gcd(a,b) = a
@i
D = M
@R2
M = D
@END
0;JMP

(END)
@END
0;JMP