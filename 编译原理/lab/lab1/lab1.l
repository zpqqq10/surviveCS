 /* 实验一、利用LEX计算文本文件的字符数等 （5分）
    实验要求：编写一个LEX输入文件，使之生成可计算文本文件的字符、单词和行数且能报告这些数字的程序。
    单词为不带标点或空格的字母和/数字的序列。标点和空白格不计算为单词。 */


 /*** definitions ***/
%option noyywrap
%{
#include<stdio.h>

int chars, words =0;
int lines = 1;
%}
space [ \t\n]
blank ({space}+)
string [^ \t\n]+
letter [a-zA-Z]
digit [0-9]
word ({letter}|{digit})+
character .
line (\n)
%%
 /*** rules ***/
{word} {
    words++; 
    chars+=yyleng; 
}

{string} {
    chars+=yyleng; 
}

{character} {
    chars++;
}

{line} {
    lines++;
    chars++;
}
%%
 /*** routines ***/
int main(){
    yylex(); 
    fprintf(stdout, "\nChars: %d \nWords: %d \nLines: %d \n", chars, words, lines);
    return 0;
}
