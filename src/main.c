#include <stdio.h>
#include <stdlib.h>


// Flex functions or variables
int yyparse();
void yyerror(const char *s);


int main()
{
	return yyparse();
}

void yyerror(const char *s)
{
	printf("Error: %s\n", s);
}
