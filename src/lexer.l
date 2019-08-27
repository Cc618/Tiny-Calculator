/* Read only 1 input file */
%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>

#include "parser.tab.h"

extern void yyerror(const char *s);
%}

%%
[ \t]				;						// Ignore whitespaces	
[0-9]+				{ yylval.value = atof(yytext); return value; }
[\+\-\*\/]			{ return yytext[0]; }
\n					{ return '\n'; }
"exit"				{ return cmd_exit; }
.					{ yyerror("Unexpected character"); }
%%
