/**
 * operations
 * conditions
 * loops
 */

#include <stdio.h>

int main(void) {
  int i = 2;
  int j = 1;
  int k;

  k = i + j;
  k = i - j;
  k = i * j;
  k = i / j;
  k = i % j;
  ++i;
  i++;
  --i;
  i--;
  k += i;
  k -= i;
  k *= i;
  k /= i;
  k %= i;

  if (k > i) {
    i = 3;
  }

  if (k < i) {
    i = 3;
  }

  if (k >= i) {
    i = 3;
  }

  if (k <= i) {
    i = 3;
  }

  if (k == i) {
    i = 3;
  }

  if (k != i) {
    i = 3;
  }

  if (k == i && k == j) {
    i = 3;
  }

  if (k == i || k == j) {
    i = 3;
  }

  if (!(k == j)) {
    i = 3;
  }

  if (k == i) {
    i = 3;
  } else {
    i = 2;
  }
  i = (k == i) ? 3 : 2;

  if (k == i) {
    i = 3;
  } else if (k == j) {
    i = 3;
  } else {
    i = 3;
  }

  while (i > 0) {
    --i;
  }
  /*
    while (i > 0)
        --i;
    */

  for (int start = 0; start < 10; ++start) {
    ++i;
  }

  const char *a2[2] = {"lol", "ok"};
  for (int i = 0; i < 2; ++i) {
    printf("%s\n", a2[i]);
  }

  do {
    --i;
  } while (i > j);

  while (i > 0) {
    --i;
    while (j > 0) {
      --j;
    }
  }

  while (i > 0) {
    if (i == 1) {
      break;
    }
    if (i == 2) {
      continue;
    }
  }

  for (;;) {
    // infini
  }

  switch (i) {
    case 1:
      printf("Ok");
      break;
    case 2:
    case 3:
      break;
    default:
      printf("ok");
  }

  return 0;
}
