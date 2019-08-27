# Tiny-Calculator

A small calculator made with Flex, Bison and GCC

## Example ##

Here is a small example of the program :

__3 * 2 - 8__  
Result: _-2.000000_  
__2*3/8-9__  
Result: _-8.250000_  
__exit__  

You can notice that the whitespaces are ignored.
Type __exit__ to quit.

## Features ##

- Operator priorities (compute * before +)
- Space handler (you can add whitespaces or tabs in the calculation)

## How to use ? ##

To build this program you must have Flex, Bison and GCC.
You can also use make.

In the src directory, type :

```bash
make
```

Or if you want to build step by step : 

```bash
flex lexer.l
bison -d parser.y

gcc -o tiny_calculator main.c lex.yy.c parser.tab.c
```

The name of the program is "tiny_calculator".  

_If the target platform is not Linux, make sure to add an extension to the name._
