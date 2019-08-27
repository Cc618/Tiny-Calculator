
all: lexer.l parser.y main.c
	flex lexer.l
	bison -d parser.y

	gcc -o tiny_calculator main.c lex.yy.c parser.tab.c


clean:
	rm -f parser.tab.c parser.tab.h lex.yy.c lex.yy.o tiny_calculator
