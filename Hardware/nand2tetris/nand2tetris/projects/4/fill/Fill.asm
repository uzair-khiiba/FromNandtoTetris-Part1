// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.
(loop)	
@KBD
D=M 
@clear
D;JEQ //go to clear
@fill
0;JMP

(fill)
@SCREEN
D=A
@addr
M=D //addr= base address

(fill_loop)
@addr
M=A
M=-1

@addr
M=M+1

@KBD
D=A
@addr
D=D-M
@loop
D;JGE

@fill_loop
0;JMP

(clear)
(clear_loop)
@addr
M=A
M=0

@addr
M=M+1

@KBD
D=A
@addr
D=D-M
@loop
D;JGE

@clear_loop
0;JMP