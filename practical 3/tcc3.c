#include <stdio.h>  
#include <string.h>  
int main()  
{      
    char str[100], stack[100];      
    int top = -1;      
    int i = 0, len;      
    printf("Enter the string: ");      
    scanf("%s", str);      
    len = strlen(str);      
    /* Push all 'a' onto the stack */      
    while (i < len && str[i] == 'a')      
    {          
        stack[++top] = 'a';          
        i++;      
    }
    /* Pop one 'a' for every 'b' */      
    while (i < len && str[i] == 'b')      
    {          
        if (top == -1)          
        {              
            printf("String Rejected\n");              
            return 0;          
        }          
        top--;          
        i++;      
    }      
    /* Acceptance condition */      
    if (i == len && top == -1)      
    {          
        printf("String Accepted\n");      
    }      
    else      
    {          
        printf("String Rejected\n");      
    }
    
    return 0;  
} 