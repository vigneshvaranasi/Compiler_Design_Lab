%{
#include <stdio.h>
int vowel_count = 0, consonant_count = 0;
%}
%%
[aAeEiIoOuU] {vowel_count++;}
[a-df-hj-np-tv-zA-DF-HJ-NP-TV-Z] {consonant_count++;}
\n { return 0; }
. ;
%%
int yywrap() {return 1;}
int main() {
    yylex();
    printf("Number of vowels: %d\n", vowel_count);
    printf("Number of consonants: %d\n", consonant_count);
    return 0;
}