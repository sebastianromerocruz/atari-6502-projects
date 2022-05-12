# Atari 6502

[![Language 6504 ASM](https://img.shields.io/badge/Language-6504%20ASM-%23fff)](https://www.masswerk.at/6502/6502_instruction_set.html)
[![IDE VS Code](https://img.shields.io/badge/Editor-VS%20Code-%230065A9)](https://code.visualstudio.com/)
[![Assembler DASM](https://img.shields.io/badge/Assembler-DASM-important)](https://dasm-assembler.github.io/)
[![Emulator Stella](https://img.shields.io/badge/Emulator-Stella-blueviolet)](https://stella-emu.github.io/)
[![OS MacOS](https://img.shields.io/badge/OS-MacOS-9cf)](https://www.apple.com)

Some 6502 (or 6507, technically) Assembly Projects based on [**Gustavo Pezzi's**](https://pikuma.com/) [**udemy course**](https://www.udemy.com/course/programming-games-for-the-atari-2600/).

### Projects

1. [**Clean Memory**](cleanmem/)
2. [**Instruction Set Exercises**](exercises/)
3. [**Colour Background Screen**](colourbg/)
4. [**_Nijigasaki_: Rainbow Background Screen**](nijigasaki/)

### Resources

- [**6502 Instruction Set**](http://www.6502.org/tutorials/6502opcodes.html)
- **DASM Command**: `dasm [assemblyfile.asm] -f3 -v0 -o[cartfilename.bin]`
    - `f3`: Denotes output format
    - `v0`: Denotes verboseness level; `0` only displays **errors**
- [**`Makefile`**](assets/helper-files/Makefile)
- [**Manuals and Textbooks**](assets/texts/)
- [**Helper Files**](assets/helper-files/)
- [**Colour Palette**](https://en.wikipedia.org/wiki/List_of_video_game_console_palettes#NTSC)