#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define KEY 15
#define HOME "qpiiatRIU{Pvqp_Ugt3_UDDS_Stn_d0D!_85864r1277qu8195pqqtp6540494pr46}\n"
__attribute__((section(".hidden"))) char BANKAI[] = HOME;

void encrypt(char* message, int key) {
    int length = strlen(message);
    for (int i = 0; i < length; i++) {
        char currentChar = message[i];
        if (isalpha(currentChar)) {
            if (islower(currentChar)) {
                message[i] = ((currentChar - 'a' + key) % 26) + 'a';
            } else {
                message[i] = ((currentChar - 'A' + key) % 26) + 'A';
            }
        }
    }
}

int main()
{
    char invitecode[100];
    puts("Welcome to battleCTF invite code verification portal.");
    printf("Enter your invite code to verify: ");
    fgets(invitecode, 100, stdin);
    encrypt(invitecode,KEY);
    if(!strcmp(invitecode, BANKAI))
		puts("Valid code... !");
    else
    	puts("Invalid code...!");

    return 0;
}
