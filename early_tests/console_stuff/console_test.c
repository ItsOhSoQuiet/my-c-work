/* Program that takes in two integers from user
   input on the console, and multiplies them
*/

#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]){
  if (argc != 3) {
    printf("Format is ./console_test integer integer\n");
    return 0;
  }

  int num_1, num_2, product;
;
  num_1 = atoi(argv[1]);
  num_2 = atoi(argv[2]);

  product = num_1 * num_2;
  printf("%d\n", product);
  return 0;

}
