%{
#include "y.tab.h"
#include <stdio.h>
#include <string.h>
int LineNo = 1;
%}
identifier [a-zA-Z][_a-zA-Z0-9]*
number [0-9]+|([0-9]*\.[0-9]+)
%%
main\(\) return MAIN;
if return IF;
else return ELSE;
while return WHILE;
int|char|float return TYPE;
{identifier} {
	strcpy(yylval.var, yytext);
	return VAR;
}
{number} {
	strcpy(yylval.var, yytext);
	return NUM;
}
'<'|'>'|">="|"<="|"==" {
	strcpy(yylval.var, yytext);
	return RELOP;
}
[ \t] ; // Ignore spaces and tabs
\n LineNo++; // Increment line number on newline
. return yytext[0]; // Return any other character as is
%%
