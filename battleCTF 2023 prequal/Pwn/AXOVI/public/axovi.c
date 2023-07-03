//gcc -o axovi axovi.c -no-pie
#include <stdio.h>
#include <stdlib.h>

int main(){

    system( "echo 'Welcome to Africa battleCTF.\nTell us something about : '" );
    char buf[0x30];
    gets( buf );

    return 0;
}
