#include <stdio.h>
#include <string.h>

int main()
{
    char exp[20];
    char op;

    printf("Enter an arithmetic expression (e.g., a+b): ");
    scanf("%s", exp);

    op = exp[1];

    printf("\nGenerated Intermediate Code:\n");

    switch (op)
    {
        case '+':
            printf("MOV R0, %c\n", exp[0]);
            printf("ADD R0, %c\n", exp[2]);
            printf("MOV RESULT, R0\n");
            break;

        case '-':
            printf("MOV R0, %c\n", exp[0]);
            printf("SUB R0, %c\n", exp[2]);
            printf("MOV RESULT, R0\n");
            break;

        case '*':
            printf("MOV R0, %c\n", exp[0]);
            printf("MUL R0, %c\n", exp[2]);
            printf("MOV RESULT, R0\n");
            break;

        case '/':
            printf("MOV R0, %c\n", exp[0]);
            printf("DIV R0, %c\n", exp[2]);
            printf("MOV RESULT, R0\n");
            break;

        default:
            printf("Invalid Expression\n");
    }

    return 0;
}