%{
    #include<stdio.h>
    int ws = 0, ch = 0, wc = 0, ln = 0, tc = 0;    
%}

%%


([a-zA-Z0-9])+ {wc++; ch=ch+yyleng;}
\n {ln++;}
[ ] {ws++;}
\t {tc++;}
. {ch++;}

%%

int yywrap(){
    return 1;
}

int main()
{   
    
    yylex();

    printf("new line = %d\ntab spaces = %d\nspaces = %d\ncharacters = %d\nwords = %d", ln, tc, ws, ch, wc);
    return 0;
}