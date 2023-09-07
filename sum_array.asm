; who: 
; what: <the function of this program>
; why: <the name of the lab>
; when: < the due date of this lab.
section     .text
global      _start
_start:
   xor al, al
   mov ecx, 10
   mov esi, arraySum
.loop
   sub ebx, ecx
   add al, [esi + ecx]
   loop .loop
 
 
exit:
  mov     ebx, 0      ; return 0 status on exit - 'No Errors'
  mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
  int     80h
section     .bss
 
section .data
   arraySum   db 1, 2, 3, 4, 5, 6, 7, 8, 9, 0xA
