%{
    #include<stdio.h>
    int count = 0;    
%}

%%

("int")|("float")|("char")|("if")|("else")|("printf")|("scanf") {printf("%s is a keyword\n", yytext);}
^[a-zA-Z_][a-zA-Z0-9_]* {printf("%s is a valid identifier\n", yytext); count++;}
^[^a-zA-Z_] {printf("%s is not a valid identifier\n", yytext);}

%%

int yywrap(){
    return 1;
}

int main()
{   
    printf("Enter the text");
    yylex();
    printf("Total number of identifiers = %d", count);
    return 0;
}



