%{
#include<stdio.h>
#include<stdlib.h>
#include"y.tab.h"

int line_num=0;

%}

%%

void		;
main\(\)	{return (MAIN);}

int		{return (INT);}
float		{return (FLOAT);}
char		{return (CHAR);}
double		{return (DOUBLE);}
long		{return (LONG);}

if		{return (IF);}
else		{return (ELSE);}
for		{return (FOR);}
while		{return (WHILE);}

[a-zA-Z][A-Za-z0-9_]*		{
					strcpy(yylval.arg,yytext);
					return (VARIABLE);
				}
== |
!= |
\<= |
\>= |
\< |
\> 		{
			strcpy(yylval.arg,yytext);
			return (REL_OP);
		}
[0-9]+		{
			strcpy(yylval.arg,yytext);
			return (NUMBER);
		}
[ \t]		;

[\n]		{line_num++;}

.		{return yytext[0];}
%%

int yywrap()
{
	return 1;
}

int yyerror()
{
	printf("\nERROR!!\n");
	return 1;
}
			
