%{
#include<stdio.h>
#include <ctype.h>
#include<math.h>
#include<stdlib.h>

int main(); 
int yyerror();
int yywrap(); 
int yylex();
%}
%code requires {
typedef struct{
    double val; 
    int flag;
}type; 
#define YYSTYPE type
}
%token NUM

%%
 /*** rules ***/
commands: command {}
command: 
    command '\n' exp 
    {
        if($3.flag){
            printf("%.2f\n", $3.val); 
        }
        else{
            printf("%d\n", (int)$3.val); 
        }
    }
    | exp 
    {
        if($1.flag){
            printf("%.2f\n", $1.val); 
        }
        else{
            printf("%d\n", (int)$1.val); 
        }
    };

exp: 
    exp '+' term
    {
        $$.val = $1.val + $3.val; 
        $$.flag = $1.flag | $3.flag;
    }
    |
    exp '-' term
    {
        $$.val = $1.val - $3.val; 
        $$.flag = $1.flag | $3.flag;
    }
    |
    term
    {
        $$.val = $1.val;
        $$.flag = $1.flag;
    };

term: 
    term '*' factor
    {
        $$.val = $1.val * $3.val; 
        $$.flag = $1.flag | $3.flag;
    }
    |
    term '/' factor
    {
        $$.val = $1.val / $3.val;  
        $$.flag = $1.flag | $3.flag;
    }
    |
    factor{
        $$.val = $1.val;
        $$.flag = $1.flag;
    }; 

factor: 
    '-' poww
    {
        $$.val = - $2.val; 
        $$.flag = $2.flag;
    }
    |
    poww
    {
        $$.val = $1.val;
        $$.flag = $1.flag;
    };

poww: 
    number '^' number
    {
        $$.val = pow($1.val, $3.val);
        $$.flag = $1.flag | $3.flag;
    }
    |
    number
    {
        $$.val = $1.val;
        $$.flag = $1.flag;
    };

number: 
    '(' exp ')'
    {
        $$.val = $2.val;
        $$.flag = $2.flag;
    }
    | 
    NUM{
        $$.val = $1.val;
        $$.flag = $1.flag;
    };

%%
 /*** routines ***/
int main(){
    return yyparse(); 
}

int yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
    return 0;
}

int yywrap(){
    exit(0);
    return 0;
}