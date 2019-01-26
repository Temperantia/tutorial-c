#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void print(char *str) {
  printf("%s\n", str);
}

int main(void) {
  char *str = (char *)malloc(sizeof(char) * 10);

  if (str == NULL) {
    return 1;
  }
  strcpy_s(str, 10, "hello");

  print(str);

  free(str);
  return 0;
}
