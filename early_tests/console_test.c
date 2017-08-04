#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main(int argc, char *argv[]){
  if (argc != 3) {
    printf("Format is ./console_test integer integer\n");
    return 0;
  }

  int num_1, num_2, product;

  errno = 0;
  num_1 = atoi(argv[1]);
  num_2 = atoi(argv[2]);

  if (errno != 0){
    printf("Format is ./ console_test integer integer\n");
    return 0;
  } else {
    product = num_1 * num_2;
    printf("%d\n", product);
    return 0;
  }
}
