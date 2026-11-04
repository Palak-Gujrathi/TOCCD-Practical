%{
#include<stdio.h> 
#include<stdlib.h> 
int yylex(void); 
void yyerror(const char *s); 
%} 
%token A B 
%% 
S: A B |A S B 
%% 
void yyerror(const char *s) 
{ 
    printf("String Rejected\n"); 
} 
int main() 
{ 
    printf("Grammar: S-> aSb | epsilon\n"); 
    printf("Enter the input string: "); 
    if(yyparse()==0) 
        printf("String Accepted\n"); 
    return 0; 
}