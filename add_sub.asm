; who: Antonio Mora
; what: A program that loads values from meme and adds and subtracts
; why: Topic 3 example
; when: 2022-03-17

section     .text

global      _start

_start:
    mov eax, [val1]   ;move val one into acculuator
    add eax, [val2]   ; add to accumlator val2
    sub eax, [val3]   ; substract val3 from accmulator
    mov [final], eax  ; store sum in final
    mov ebx, eax      ; copy sum into ebx
    and ebx, mask     ; isolate lease sig bit in ebx
    mov ebx, [array + 8]

exit:  
    mov     ebx, 0      ; return 0 status on exit - 'No Errors'
    mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     80h

section     .bss
    final resd 1    ; memory location for the sum of values
section     .data
    val1 dd 0X2001 ;initalized value
    val2 dd 0X1000 ;initalized value
    val3 dd 0X4000 ;initalized value
    mask equ 0000_0000_0000_0000_0000_0000_0001b
    array dd -22, 15, 55, 64, 2