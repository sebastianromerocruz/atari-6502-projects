;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 2: This exercise is about transferring values from registers to other registers.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    processor 6502
    seg Code                ; Starting a new code segment
    org $F000               ; Define origin of ROM code at memory location F000

Start:
    LDA #$A                 ; Load the A register with the hexadecimal value $A
    LDX #%11111111          ; Load the X register with the binary value %11111111
    STA $80                 ; Store the value in the A register into memory address $80 
    STX $81                 ; Store the value in the X register into memory address $81

    org $FFFC               ; End ROM by adding required values to memory location FFFC
    .word Start             ; Adding 2 bytes in memory location FFFC
    .word Start             ; Adding 2 bytes in memory location FFFE