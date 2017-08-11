#include <stdio.h>

int function_test(int number, int i){
  if (i == 0){
    printf("Enter in the first number: ");
    scanf("%d", &number);
  } else if (i == 1){
    printf("Enter in the second number: ");
    scanf("%d", &number);
  } else{
    printf("Enter in the third number: ");
    scanf("%d", &number);
  }
  return number;
}

int main(int argc, char *argv[]){
  int j, k;
  int anArray[3] = {1, 2, 3};
  for (j = 0; j < 3; j++){
    k = function_test(anArray[j], j);
    anArray[j] = k;
  }
  printf("%d %d %d\n", anArray[0], anArray[1], anArray[2]);
  return 0;
}
