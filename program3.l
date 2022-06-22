%{
    #include<stdio.h>    
%}

%%
^[-+]?[0-9]+\.[0-9]+$ {printf("%s is a valid floatValue", yytext);}
^[-+]?[0-9]+$  {printf("%s is a valid integer", yytext);}
.* {printf("Invalid value");}
%%

int yywrap(){
    return 1;
}

int main()
{
    printf("Enter a number\n");
    yylex();
}