//gcc -fno-stack-protector -no-pie syscall.c -o syscall
#include <stdio.h>
#include <stdlib.h>

static char* gbeto = "/bin/sh";

void hausa() {
    __asm__(  
          "mov $0xf, %eax;"  
          "ret;"
          "syscall;"
          "ret"
            );
}

int main() {
    printf("Africa battle CTF 2023\n");
    printf("Tell us about your ethnicity:\n");

    char buf[0x30];
    gets(buf);
}
