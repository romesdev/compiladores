%{
        int caracteres, palavras, linhas; /* definindo as minhas variáveis */
%}

%%

\n        { linhas++; caracteres++; }   /* cada linha é um \n e considero \n como caractere também */


[^ \t\n]+ { palavras++, caracteres += yyleng; } /* desconsiderando os espaços e tabulações, o padrão que casa é considerado palavra. e uso a variável global do lex para contar caracteres dessa palavra e somar na qtd de caracteres  */



.         { caracteres++;}                  /* por fim, considero tudo como caractere (letras, pontos, espaços, etc), exceto nova linha  */


%%

int yywrap(void){ /* funcao necessaria para o funcionamento */
        return 1;

}

int main(void) {
        yylex(); //funcao lex
        printf("\n");
        printf("Linhas: %d\t Palavras: %d\t Caracteres: %d\n", linhas, palavras, caracteres);/* imprimo as quantidades */
        
        return 0;
}