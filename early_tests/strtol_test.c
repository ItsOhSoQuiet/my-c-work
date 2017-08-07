#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]){
  if (argc < 2){
    printf("Give me some kind of number!\n");
    return 0;
  }

  char *p;
  long int number;
  number = strtol(argv[1], &p, 10);

  printf("The number is %li and the string is %s.\n", number, p);
  printf("The first non-integer character of your input is %c.\n", p[0]);
  return 0;
}
