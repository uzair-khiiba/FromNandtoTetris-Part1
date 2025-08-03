// Fill.asm - Fills screen black when key is pressed, clears when not

(loop)
    @KBD
    D=M
    @clear
    D;JEQ     // If no key pressed, jump to clear
    @fill
    0;JMP     // Otherwise, go to fill

(fill)
    @SCREEN
    D=A
    @addr
    M=D       // addr = SCREEN (16384)

(fill_loop)
    @addr
    A=M       // A = addr
    M=-1      // Set pixel to black

    @addr
    M=M+1     // addr++

    @KBD
    D=A
    @addr
    D=M-D     // D = addr - KBD
    @loop
    D;JGE     // If addr >= KBD, go back to check keyboard

    @fill_loop
    0;JMP     // Else keep filling

(clear)
    @SCREEN
    D=A
    @addr
    M=D       // addr = SCREEN (re-init)

(clear_loop)
    @addr
    A=M       // A = addr
    M=0       // Clear pixel

    @addr
    M=M+1     // addr++

    @KBD
    D=A
    @addr
    D=M-D     // D = addr - KBD
    @loop
    D;JGE     // If addr >= KBD, go check keyboard again

    @clear_loop
    0;JMP
