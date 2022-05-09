# [**Instructions Warm-Up Exercises**](assets/Exercises.pdf)

<sub>[**Instruction Set**](assets/opcodes.pdf)</sub>

1. [**Exercise 1**](asm-files/exerciseone.asm): Load the processor registers A, X, and Y with some values.

```asm
Start:
    LDA #$82                ; Load the A register with the literal hexadecimal value $82
    LDX #82                 ; Load the X register with the literal decimal value 82
    LDY $82                 ; Load the Y register with the value that is inside memory position $82
```

2. [**Exercise 2**](asm-files/exercisetwo.asm): Store some values into zero-page memory positions.

```asm
Start:
    LDA #$A                 ; Load the A register with the hexadecimal value $A
    LDX #%11111111          ; Load the X register with the binary value %11111111
    STA $80                 ; Store the value in the A register into memory address $80 
    STX $81                 ; Store the value in the X register into memory address $81
```

3. [**Exercise 3**](asm-files/exercisethree.asm): Transferring values from registers to other registers.

```asm
Start:
    LDA #15             ; Load the A register with the literal decimal value 15 
    TAX                 ; Transfer the value from A to X
    TAY                 ; Transfer the value from A to Y
    TXA                 ; Transfer the value from X to A
    TAY                 ; Transfer the value from Y to A
    LDX #6              ; Load X with the decimal value 6 
    TXA                 ; Transfer the value from X to Y
    TAY                 ; No direct transfer from X to Y, so have to go through accumulator
```

4. [**Exercise 4**](asm-files/exercisefour.asm): Adding and subtracting values.

```asm
Start:
    CLC                 ; We always clear the carry flag before addition in the 6502
    LDA #100            ; Load the A register with the literal decimal value 100
    ADC #5              ; Add the decimal value 5 to the accumulator
    SEC                 ; We always set the carry flag before subtraction in the 6502
    SBC #10             ; Subtract the decimal value 10 from the accumulator
                        ; Register A should now contain the decimal 95 (or $5F in hexadecimal)
```

5. [**Exercise 5**](asm-files/exercisefive.asm): Add a value from a (zero page) memory position into the accumulator.

```asm
Start:
    LDA #$A             ; Load the A register with the hexadecimal value $A 
    LDX #%1010          ; Load the X register with the binary value %1010
    STA $80             ; Store the value in the A register into (zero page) memory address $80 
    STX $81             ; Store the value in the X register into (zero page) memory address $81
    LDA #10             ; Load A with the decimal value 10
    CLC
    ADC $80             ; Add to A the value inside RAM address $80
    ADC $81             ; Add to A the value inside RAM address $81
                        ; A should contain (#10 + $A + %1010) = #30 (or $1E in hexadecimal)
    STA $82             ; Store the value of A into RAM position $82
```

6. [**Exercise 6**](asm-files/exercisesix.asm): Increment and decrement instructions.

```asm
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
```

7. [**Exercise 7**](asm-files/exerciseseven.asm): Increment and decrement using zero-page addressing mode.

```asm
Start:
    LDA #10         ; Load the A register with the decimal value 10
    STA $80         ; Store the value from A into memory position $80
    INC $80         ; Increment the value inside a (zero page) memory position $80 
    DEC $80         ; Decrement the value inside a (zero page) memory position $80
```

8. [**Exercise 8**](asm-files/exerciseeight.asm): Loop that counts down from 10 to 0.

```asm
Loop:
    TYA                 ; Transfer Y to A
    STA $80,Y           ; Store the value in A inside memory position $80+Y 
    DEY                 ; Decrement Y
    BPL Loop            ; Branch if plus (only if result of last instruction was positive)
```

9. [**Exercise 9**](asm-files/exercisenine.asm): A simple loop that goes from 1 to 10 using the `CMP` instruction.

```asm
Start:
    LDA #1              ; Initialize the A register with the decimal value 1

Loop:
    CLC                 ; Increment A
    ADC #1          
    CMP #10             ; Compare the value in A with the decimal value 10
    BNE Loop            ; Branch back to loop if the comparison was not equals (to zero)
```

<sub>[**Official Solution File**](assets/Exercises-Solutions.pdf)</sub>