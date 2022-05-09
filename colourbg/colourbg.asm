    processor 6502

    include "vcs.h"
    include "macro.h"

    seg code
    org $F000           ; Defines the origin of the ROM at memory location $F000

START:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; We have to zero the whole memory, but we will use a macro instead of doing it manually
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; CLEAN_START         ; Macro to safely clear the memory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set background luminosity colour to yellow
;; See: https://en.wikipedia.org/wiki/List_of_video_game_console_palettes#NTSC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lda #$9D            ; Load colour into A ($9D is a cute NTSC light blue)
    sta COLUBK          ; Store A to BackgroundColour Address $09

    JMP START           ; Repeat from START


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fill ROM size to exactly 4KB
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    org $FFFC           ; Defines origin to $FFFC
    .word START         ; Reset vector at $FFFC (where program starts)
    .word START         ; Interrupt vector at $FFFE (unused in the VSC)