#include <stdio.h>
#include <string.h>
#include "fancy_hello_world.h"

int main(void) {
    char name[10];
    char output[40];
    printf("Enter your name:\n");
    fgets(name,sizeof(name),stdin);
    hello_string(name,output);
    printf("%s",output);
    return 0;
}
void hello_string(char* name, char* output){
    char temp[40]="Hello World, hello ";
    strcat(temp,name);
    strcpy(output,temp);
}