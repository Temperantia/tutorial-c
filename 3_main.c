/*
  - functions
  - random
  - time
  - entrée standard
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "3_functions.h"

int main(void) {
  printf("%d\n", twice(3));

  srand(time(NULL));
  int i = rand();
  int j = rand() % 10;

  printf("%d\n", i);
  printf("%d\n", j);

  time_t now = time(NULL);
  char date[26];
  ctime_s(date, sizeof date, &now);

  printf("%s\n", date);

  _putenv("TZ=Asia/Singapore");
  struct tm current_time;
  localtime_s(&current_time, &now);
  printf("Year %d\n", 1900 + current_time.tm_year);

  char local_time[50];
  asctime_s(local_time, 50, &current_time);
  printf("%s\n", local_time);

  printf("Enter a character : \n");
  int c = getchar();
  printf("You entered the character %c which corresponds to the value %d.\n",
  c, c);

  char name[50];
  printf("Enter name :\n");
  fgets(name, 50, stdin);
  printf("%s\n", name);

  fprintf(stderr, "This is an error written on the standard error stream");
}
