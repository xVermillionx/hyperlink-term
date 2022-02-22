#include "hyper.h"
#include <stdbool.h>

int main (int argc, char* argv[]){

  if(argc < 3)
    return -1;

  int i = 1;
  bool n = strstr(argv[i], "-n") == 0;

  if(!n)
    i++;

  const char* link = argv[i];
  char name[256] = {0};

  i++;

  for(;i < argc; i++){
    strcat(name, argv[i]);
    if(i < argc-1)
      strcat(name, " ");
  }

  printLink(link, name);

  if(n)
    printf("\n");

  return 0;
}
