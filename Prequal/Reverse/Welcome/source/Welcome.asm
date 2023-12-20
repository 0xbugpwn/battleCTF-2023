section .data  
	prompt db 'Welcome to Africa Battle CTF 2023', 0Ah
    prompt_len equ $-prompt
    
section .text
    global _start

_start:
    mov rbx, 0x522d1b20f6
    mov rax, rbx 
    add rax, 0x1ee2eeee
    nop           
    xor rax, 0xAA84AAA          
    

    ; Prompt
    mov eax, 4
    mov ebx, 1
    mov edx, prompt_len
    mov ecx, prompt
    int 0x80

    ; Exiting the program
    mov eax, 1
    mov ebx, 1
    int 0x80
