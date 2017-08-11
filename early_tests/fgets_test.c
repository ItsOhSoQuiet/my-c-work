#include <stdio.h>
#include <stdlib.h>

long int num_entry(void){
  char buff[100];
  char *endpoint;
  long int i;
  if (fgets(buff, 100, stdin) == NULL) {
    printf("Done!\n\n");
    return -1;
  } else {
    if (buff[0] == '\n'){
      printf("Done!\n");
      return -1;
    } else {
      i = strtol(buff, &endpoint, 10);
      return i;
    }
  }
}

int main(int argc, char *argv[]){
  int arraySize;
  char buff[10];
  printf("Enter the amount of integers that you wish to enter: ");
  fgets(buff, 10, stdin);
  arraySize = atoi(buff);
  if (arraySize < 1){
    printf("Enter an actual integer for how many numbers you wish to enter.\n");
    return 0;
  } else {
    long int numArray[arraySize];
    int i, j;
    long int k;
    i = 0;
    j = 0;
    while (j != -1){
      printf("Enter number %d, or enter blank line to exit: ", i+1);
      k = num_entry();
      if (k == -1){
        break;
      } else {
        numArray[i] = k;
        i++;
        if (i == arraySize){
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
}
