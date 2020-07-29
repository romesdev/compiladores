%{
#include <stdio.h> /* biblioteca padrao de entrada e saida do C */
#include <ctype.h> /* biblioteca para fazer uso da funcao toupper (CAIXA ALTA)*/
%}


%%
"/*"  { char c; /* quando é encontrado "/*", carrego os caracteres para fazer as comparações */
       int done = 0;
       ECHO;
       do {
                while ((c = input () ) != '*')  putchar ( toupper(c) ); /* enquanto não for * continuo mudando a case*/

                putchar ( toupper (c) ); /* transformo em caixa alta */ 

                while ((c = input () ) == '*')  putchar ( toupper(c) ); /* enquanto tiver * continuo no loop  */ 

                putchar( toupper(c) ); /* transformo em caixa alta */ 

                if ( c == '/') done = 1; /*caso de quebra, após o * se encontro uma / então saio */ 
                } while(done != 1);
       }

"//"    {char c; /* funcionamento semelhante, mas agora para o // */
         int done = 0;
         ECHO;
         do {
                while ((c = input () ) != '\n') putchar ( toupper(c) );
                putchar ( toupper (c));

                if ( c == '\n') done = 1;


           } while (done != 1);



        }

%%

int yywrap (void){
        return 1;
}

void main (void){
        /* isto é um comentário em c */
        yylex();
       /* isto é um comentário em c */
       //esse também 
}
