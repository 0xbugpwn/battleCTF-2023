section .text
    global _start

_start:
	
    mov eax, 0x62209b66  
    xor eax, 0x41ef12
    nop
    mov ebx, 0x6c24ac46
    xor ebx, 0x41ef12
    xor ecx, ecx
    mov ecx, 0x463abc23
    xor ecx, 0x41ef12
    mov edx, ecx
    mov edx, 0x6d318377 
    xor edx, 0x41ef12
    mov esi, 0x5f0c8064
    nop
    xor esi, 0x41ef12   
	mov ebx, 0x492fbc7a
	xor ebx, 0x41ef12
	mov ecx, 0x652d836f
	xor ecx, 0x41ef12
	
    ; exit the program
    xor eax, eax
    inc eax        
    xor ebx, ebx         
    int 0x80         
    
