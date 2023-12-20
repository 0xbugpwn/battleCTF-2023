#include <stdio.h>
#include <unistd.h>

void __attribute__((constructor)) __attn_ctx_();
void __attn_ctx_(){
	setreuid(geteuid(), geteuid());
}

int main(){
    char buffer[0x10] = {0};
    printf("Admin Location : %p\n", buffer);
    puts("Let a message for the ADMIN:");
    read(0, buffer, 0x40);
    return 0;
}