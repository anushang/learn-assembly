; generic comment

global _start
; program instrtucktions
section .text:

_start:
	mov eax, 0x4     	;write syscall
	mov ebx, 1 	 	; use stdout as the fd
	mov ecx, message 	; use the message as the buffer
        mov edx, message_length ; supply mess len
	int 0x80 		; invoke syscall

	; now exit
	
	mov eax, 0x1
	mov ebx, 0
	int 0x80	



; equ =equal to
; 0xA argument
; db bytes
section .data:
	message: db "hello world!", 0xA    ;0xA is \n newline
	message_length equ $-message
