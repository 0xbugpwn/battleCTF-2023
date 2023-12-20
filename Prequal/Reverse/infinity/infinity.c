#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void __attribute__((destructor)) __attn_ctx_astro_();


int main(){

	printf("Hello battleCTF 2023 \n");
	return 0;
}


void __attn_ctx_astro_() {
	char *target = (char *)malloc(8);
    *(unsigned long long *)target = (unsigned long long)main + 0x00000004;

    
    int x = 3;
    int y = 5;
    int z = x * y;

    // Opaque predicate: z will always be equal to 15,
    // so this if statement will always be true
    if (z == 15) {
        // Do something malicious

        // Create another opaque predicate
        int a = 10;
        int b = 5;
        int c = a - b;

        // This if statement will also always be true
        if (c == 5) {
            __asm__("push 0x5f4f7572\n");
        }
    }
	  // Original instructions
    x = 0x12345678;
    y = 0x87654321;
    if (x == y) {
        x = 0x11111111;
        y = 0x22222222;
    } else {
        x = 0x33333333;
        y = 0x44444444;
    }
    
            
	__asm__("nop\n"
            "nop\n"
            "nop\n"
            "nop\n");
	
    // Obfuscated instructions using control flow flattening
    int i = 0;
    while (1) {
        switch (i) {
            case 0:
            	__asm__("push 0x6c654354\n");
                if (x == y) {
                    x = 0x55555555;
                    y = 0x66666666;
                    __asm__("push 0x467b4265\n");
                }
                break;
            case 1:
            	__asm__("push 0x796f6e64\n");
                if (x != y) {
                    x = 0x77777777;
                    y = 0x88888888;
                    __asm__("push 0x62617474\n");
                }
                break;
            // ...
            default:
                break;
        }
            // "Garbage" instructions that break the normal sequence of instructions
    __asm__("nop\n"
            "nop\n"
            "push 0x47616c61\n"
            "nop\n"
            "nop\n");
        i++;
        if (i > 10) {
            break;
        }
    }
    
    // "Garbage" instructions that break the normal sequence of instructions
    __asm__("nop\n"
            "nop\n"
            "push 0x7869657d\n"
            "nop\n"
            "nop\n");
}
