;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 6: This exercise covers the increment and decrement instructions of the 6502.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502
    seg Code
    org $F000
    

Start:

    CLC         ; Clear carry for increamenting the accumulator without it
    LDA #1      ; Load the A register with the decimal value 1
    LDX #2      ; Load the X register with the decimal value 2
    LDY #3      ; Load the Y register with the decimal value 3
    INX         ; Increment X
    INY         ; Increment Y
    ADC #1      ; Increment A
    DEX         ; Decrement X
    DEY         ; Decrement Y
    SEC         ; Re-set carry for decrementing the accumulator with it
    SBC #1      ; Decrement A

    org $FFFC
    .word Start
    .word Start