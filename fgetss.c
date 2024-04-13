#include<stdio.h>
extern char *fgetss();
char *fgetss(){
   char s[2080];
   char *ss=s;
   fgets(ss,2079,stdin);
   return ss;
}
