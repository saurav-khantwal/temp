%{
    #include<stdio.h>    
%}

%%

auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short {ECHO; printf("\nKEYWORD\n");} 
[{};,()]   {ECHO; printf("\tSEPERATOR\t");}						
[+-/=*%]   {ECHO; printf("\tOPERATOR\t");}						
([a-zA-Z][0-9])+|[a-zA-Z]* {ECHO; printf("\tIdentifier\t");}    
.|\n ;



%%

int yywrap()
{
    return 0;
}

int main(int argc, char *argv[])
{
    extern FILE *yyin;
    yyin = fopen("input.txt", "r");
    yylex();
    return 0;
}