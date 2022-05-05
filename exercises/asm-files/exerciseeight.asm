;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 8: Your goal here is to create a loop that counts down from 10 to 0. You should also fill the memory 
;             addresses from $80 to $8A with values from 0 to A.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502
    seg Code
    org $F000

Start:
    LDY #10             ; Initialize the Y register with the decimal value 10

Loop:
    TYA                 ; Transfer Y to A
    STA $80,Y           ; Store the value in A inside memory position $80+Y 
    DEY                 ; Decrement Y
    BNE Loop            ; Branch back to "Loop" until we are done

    org $FFFC
    .word Start
    .word Start