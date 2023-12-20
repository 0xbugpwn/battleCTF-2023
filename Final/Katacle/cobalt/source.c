// gcc -fno-stack-protector -z noexecstack -m32 source.c -o admin

#include <stdio.h>
#include <stdlib.h>
void __attribute__((constructor)) __attn_ctx_();
void __attn_ctx_(){
	setreuid(geteuid(), geteuid());
}

void admin() {
    char buffer[20];

    printf("System ADMIN at: %lp\n", system);
	fflush(stdout);
    printf("Let a message:");
    fflush(stdout);
    gets(buffer);
}

int main() {
    admin();

    return 0;
}
