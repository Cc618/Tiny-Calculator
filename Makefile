
all: lexer.l parser.y main.c
	flex lexer.l
	bison -d parser.y

	gcc -o a main.c lex.yy.c parser.tab.c

	./a


clean:
	rm -f parser.tab.c parser.tab.h lex.yy.c lex.yy.o a
