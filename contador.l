%{
        int nchar, nword, nline;
%}
%%
\n              { nline++;}
[A-Za-z0-9]+    { nword++, nchar += yyleng; }

%%
int yywrap(void){
        return 1;
}

int main(void) {
        yylex();
        printf("Char: %d ; \t Palavras: %d ; \t Linhas: %d\n", nchar, nword, nline);
        return 0;
}


//ç  ãñõ àèìòù áéíóúý âêîôû ü
//   Ç ÃÑÕ ÀÈÌÒÙ ÁÉÍÓÚÝ ÂÊÎÔÛ Ü