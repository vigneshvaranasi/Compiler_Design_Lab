%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(char* s);
int flag = 0;
%}
%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithmeticExpression: E {
    printf("\nResult=%d\n", $1);
    return 0;
};
E: E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | E '%' E { $$ = $1 % $3; }
 | '(' E ')' { $$ = $2; }
 | NUMBER { $$ = $1; }
;
%%
int main() {
    printf("\nEnter Any Arithmetic Expression which can have operations Addition, Subtraction, Multiplication, Division, Modulus, and Round brackets:\n");
    yyparse();
    if(flag == 0)
        printf("\nEntered arithmetic expression is Valid\n\n");
    return 0;
}
int yyerror(char* s) {
    printf("\nEntered arithmetic expression is Invalid: %s\n", s);
    flag = 1;
    return 0;
}
