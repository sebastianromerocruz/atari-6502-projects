;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 2: This exercise is about transferring values from registers to other registers.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502
    seg Code
    org $F000

Start:
    LDA #15             ; Load the A register with the literal decimal value 15 
    TAX                 ; Transfer the value from A to X
    TAY                 ; Transfer the value from A to Y
    TXA                 ; Transfer the value from X to A
    TAY                 ; Transfer the value from Y to A
    LDX #6              ; Load X with the decimal value 6 
    TXA                 ; Transfer the value from X to Y
    TAY                 ; No direct transfer from X to Y, so have to go through accumulator

    org $FFFC
    .word Start
    .word Start