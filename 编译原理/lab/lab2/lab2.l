 /* 实验二、利用LEX进行字母的大小写转换 （5分）
    实验目的：了解LEX的基本编程方法实验要求：编写一个LEX输入文件，使之可生成将程序（语言事先定义）注释之外的所有关键字（保留字）
    均大写的程序。该LEX生成的程序要能够对源程序进行分析，将不是大写的关键字均转换为大写 */


 /*** definitions ***/
%option noyywrap
%{
#include <sys/types.h>
#include <stdio.h>
%}
line (\n)
comment1 "/*"([^*]|"*"+[^"*""/"])*"*"*"*/"
comment2 "//"[^\n]*{line}
comment {comment1}|{comment2}
 /** not all **/
key "auto"|"break"|"case"|"if"|"else"|"while"|"return"|"int"
letter [a-zA-Z]
digit [0-9]
word ({letter}|{digit})+
%%
 /*** rules ***/
{key} { 
    for (int i = 0; i < yyleng; ++i) {
        if (islower(yytext[i])) {
            yytext[i] = toupper(yytext[i]);
        }
    }
    printf("%s", yytext);
}
{comment} { 
    printf("%s", yytext);
}
{word} { 
    printf("%s", yytext);
}

%%
 /*** routines ***/
int main() {
    yylex();
    return 0;
}