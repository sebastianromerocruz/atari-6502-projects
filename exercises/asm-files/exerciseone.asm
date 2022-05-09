;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Exercise 1: Your goal here is to simply load the processor registers A, X, and Y with some values.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502          ; Tells the assembler what the target processor is
    seg Code                ; Tells assmbler that I'm going to start a new segment of code
    org $F000               ; Define the code origin at $F000

Start:
    LDA #$82                ; Load the A register with the literal hexadecimal value $82
    LDX #82                 ; Load the X register with the literal decimal value 82
    LDY $82                 ; Load the Y register with the value that is inside memory position $82

    org $FFFC               ; End ROM by adding required values to memory address #FFFC
    .word Start             ; Put 2 bytes with the reset address at memory position $FFFC
    .word Start             ; Put 2 bytes with the reset address at memory position $FFFE