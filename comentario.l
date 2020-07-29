%{
#include <stdio.h>
#include <ctype.h>
%}


%%
"/*"  {char c;
       int done = 0;
       ECHO;
       do {
                while ((c = input () ) != '*')  putchar ( toupper(c) );

                putchar ( toupper (c) );

                while ((c = input () ) == '*')  putchar ( toupper(c) );

                putchar( toupper(c) );

                if ( c == '/') done = 1;
                } while(done != 1);
       }

"//"    {char c;
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
        yylex();
        //ggrgrggr
        int a;
       /* hfhhfhdshfjsdhfdhs**** sdjjkdskjvjksd//// Tamo ai AAA/hh*/
}
