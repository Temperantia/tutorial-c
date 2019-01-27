/*
  - functions
  - random
  - time
  - entrée standard
*/

#include "3_functions.h"

int main(void) {
  const int o = twice(3);
  printf("%d\n", o);
  printf("%d\n", twice(3));

  srand(time(NULL));
  int i = rand();
  int j = rand() % 10;

  printf("%d\n", i);
  printf("%d\n", j);

  time_t now = time(NULL);
  /*
  char date[26];
  ctime_s(date, sizeof date, &now);
  printf("%s\n", date);
  */

  char name[50];
  printf("Enter name :\n");
  fgets(name, 50, stdin);
  printf("%s\n", name);

  fprintf(stderr, "This is an error written on the standard error stream");
}
