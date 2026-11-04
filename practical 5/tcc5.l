%{
#include<stdio.h>
#include<string.h>
%}

%%
[\t\n]+ ;
"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return"|"void" { printf("%s --> Keyword\n",yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("%s --> Identifier\n",yytext); }
[0-9]+\.[0-9]+ { printf("%s --> Float Constant\n",yytext); }
[0-9]+ { printf("%s --> Integer Constant\n",yytext); }
\'[^\'\n]\' { printf("%s --> Character Constant\n",yytext); }
"+"|"-"|"*"|"/"|"="|"%" { printf("%s --> operator\n",yytext); }
"("|")"|";"|","|"{"|"}"	{ printf("%s --> Special Symbol\n",yytext); }
. { printf("%s --> Unknown\n", yytext); }
%%
int main()
{
	printf("Enter a statement:\n");
	yylex();
	return 0;
}
int yywrap()
{
	return 1;
}