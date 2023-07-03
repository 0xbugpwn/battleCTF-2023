section .text
    global _start

_start:
	
    mov eax, 0x27243131  
    xor eax, 0x45
    mov ebx, 0x29200611
    xor ebx, 0x45
    mov ecx, 0x033e0824
    xor ecx, 0x45
    mov edx, 0x29322437 
    xor edx, 0x45
    mov esi, 0x201a0b24
    xor esi, 0x45   
	mov ebx, 0x32241a2a
	xor ebx, 0x45
	mov edi, 0x2d384545
	xor edi, 0x45
	
    ; exit the program
    mov eax, 1         
    xor ebx, ebx         
    int 0x80         
    
