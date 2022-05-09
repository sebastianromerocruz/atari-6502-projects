# [**Clean Memory**](cleanmem.asm)

Clears all memory positions from `00` to `FF`.

```asm
MemLoop:
    dex             ; X--
    sta $0,X        ; Store the value of A inside memory address ($0 + X) i.e. $0 + #$FF -> $0 + #$FE -> etc.
    bne MemLoop     ; Until X reaches zero, GoTo MemLoop (until z-flag is set)
```