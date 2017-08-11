#include <stdio.h>
#include <stdlib.h>

long int num_entry(void){
  char buff[100];
  char *endpoint;
  long int i;
  printf("Enter a number: ");
  if (fgets(buff, 100, stdin) == NULL) {
    printf("Done!\n\n");
    return -1;
  } else {
    i = strtol(buff, &endpoint, 10);
    return i;
  }
}

int main(int argc, char *argv[]){
  long int numArray[100];
  int i, j;
  long int k;
  i = 0;
  j = 0;
  while (j != -1){
    k = num_entry();
    if (k == -1){
      break;
    } else {
      numArray[i] = k;
      i++;
      if (i == 100){
        break;
      }
    }
  }
  if (i == 0){
    printf("No numbers entered.\n");
    return 0;
  } else {
    int l;
    for (l = 0; l < i; l++){
      printf("%li ", numArray[l]);
    }
    printf("\n");
    return 0;
  }
}
