 
section     .text
 
global      _start
 
_start:
      mov al, 128       
      neg al,

      mov ax, 8000h      
      add ax, 2

      mov ax, 0
      sub ax, 2

      mov ax, -5
      sub al, 125     
exit: 
   mov     ebx, 0      ; return 0 status on exit - 'No Errors'
   mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
   int     80h
 
section     .bss
   sum resd 2
