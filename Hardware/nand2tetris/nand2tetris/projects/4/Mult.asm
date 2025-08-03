// Mult.asm - Multiply R0 * R1 using repeated addition

@R0
D=M
@n1
M=D        // n1 = R0

@R1
D=M
@n2
M=D        // n2 = R1

@R2
M=0        // R2 = 0 (accumulator)

@i
M=0        // i = 0

(LOOP)
    @i
    D=M
    @n2
    D=D-M   // if i - n2 == 0, we are done
    @END
    D;JEQ

    @n1
    D=M
    @R2
    M=D+M   // R2 += n1

    @i
    M=M+1
    @LOOP
    0;JMP

(END)
@END
0;JMP
