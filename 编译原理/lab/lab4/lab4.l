%{
#include<stdio.h>
#include"lab4.tab.h"
%}
int [0-9]+
float ([0-9]+("."[0-9]+)?)
op [+\-*/^()]
enter [\n]
%%
 /*** rules ***/
{int} {
    yylval.val = atof(yytext); 
    yylval.flag = 0;
    return NUM; 
}
{float} {
    yylval.val = atof(yytext);
    yylval.flag = 1;
    return NUM;
}
{op} {
    return yytext[0];
}
{enter} {
    return yytext[0];
}
[ \t] {
    ;
}

%%
 /*** routines ***/

