#ifndef HYPERLINK
#define HYPERLINK

#include <stdlib.h>
#include <string.h>
#include <malloc.h>

const char OSC8[] = { 27, ']', '8', 0 };
const char    BEL = 7;

char* genLink(const char* link, const char* name){
  char* ret = malloc(sizeof(char)*(strlen(link)+strlen(name)+strlen(OSC8)*2+2));
  sprintf(ret, "%s;;%s%c%s%s;;%c", OSC8, link, BEL, name, OSC8, BEL);
  return ret;
}

void printLink(const char* link, const char* name){
  printf("%s;;%s%c%s%s;;%c", OSC8, link, BEL, name, OSC8, BEL);
}

#endif //HYPERLINK
