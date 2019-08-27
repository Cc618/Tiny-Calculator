%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex();
%}

// Only double values
%union { double value; }

// 2 tokens
%token <value> value
%token cmd_exit

// A value
%type <value> term

// The root of the abstract syntax tree (AST) is named program 
%start program

// Operator's priorities
%left '+' '-'
%left '*' '/'


// The goal is to have at the end only one term (we can also have cmd_exit to exit)
// We reduce a term by replacing 2 terms separated by an operator with the result
// and when there is only one term we print it
%%
program:
	| program cmd_exit '\n' { exit(EXIT_SUCCESS); }
	| program term '\n' { printf("Result: %f\n", $2); }
	;

term: value
	| term '+' term			{ $$ = $1 + $3; }
	| term '-' term			{ $$ = $1 - $3; }
	| term '*' term			{ $$ = $1 * $3; }
	| term '/' term			{ $$ = $1 / $3; }
	;
%%
