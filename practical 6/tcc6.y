%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(char *s);
%}

%token NUMBER

%left '+' '-'
%left '*' '/'

%%

input:
      expr '\n'
      {
          printf("Result = %d\n", $1);
      }
      ;

expr:
      expr '+' expr
      {
          $$ = $1 + $3;
      }
    | expr '-' expr
      {
          $$ = $1 - $3;
      }
    | expr '*' expr
      {
          $$ = $1 * $3;
      }
    | expr '/' expr
      {
          $$ = $1 / $3;
      }
    | '(' expr ')'
      {
          $$ = $2;
      }
    | NUMBER
      {
          $$ = $1;
      }
    ;

%%

int main()
{
    printf("Enter Arithmetic Expression:\n");
    yyparse();
    return 0;
}

void yyerror(char *s)
{
    printf("Invalid Expression\n");
}
