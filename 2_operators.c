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
  k = i / j; // 22 / 5 = 4
  k = i % j; // 22 % 5 = 2 // 22 - 5 - 5 - 5 - 5 = 2
  ++i; // i = i + 1 // va s'incrémenter directement // incrémentation
  i++; // va s'incrémenter après la prise en compte du statement
  --i; // i = i - 1 // décrémentation
  i--; // i = i - 1
  k += i; // k = k + i;
  k -= i;
  k *= i;
  k /= i;
  k %= i;

  if (k > i) { // 3 > 2
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

  if (k == i) { // 3 == 3
    i = 3;
  }

  if (k != i) { // 3 != 2
    i = 3;
  }

  if (k == i && k == j) { // true = 1, false = 0 // 3 == 3 and 3 == 3
    i = 3;
  }

  if (k == i || k == j) { // 3 == 2 ou bien 3 == 3 // false ou true
    i = 3;
  }

  // (1 + 2) * 4 != 1 + 2 * 4

  if (!(k == j)) { // inverse false => true booléenne
    i = 3;
  }

  if (k == i)
    i = 3;
  else
    i = 2;
  i = (k == i) ? 3 : 2; // ternaire

  if (k == i) {
    i = 3;
  } else if (k == j) {
    i = 3;
  } else if (k == i) {
    i = 3;
  } else {
    i = 3;
  }

  while (i > 0) { // itération
    --i;
  }
  /*
    while (i > 0)
        --i;
    */

  int start = 0;
  while (start < 10) {
    ++start;
  }
  // for (état initial ; condition d'arrêt ; action durant itération)
  for (int start = 0; start < 10;) {


    printf("%d\n", start++);
    // ==
    printf("%d\n", start); // 0
    start = start + 1;

    printf("%d\n", ++start);
    // ==
    start = start + 1;
    printf("%d\n", start); // 1

  }

  do {
    --i;
  } while (i > j); // fait une itération d'abord vérifie après

  while (i > 0) {
    --i;
    while (j > 0) { // nested
      --j;
    }
  }

  i = 3;
  while (i > 0) {
    if (i == 1) {
      break;
    }
    if (i == 2) {
      continue; // passer une étape d'itération
    }
    --i;
  }

  while (1) {
    // boucle infini
  }

  for (;;) {
    // boucle infini
    break;
  }

  switch (i) {
    case 1:
      printf("i est égal à 1\n");
      break;
    case 2:
      printf("i est égal à 2\n");
    case 3:
      printf("i est égal à 2 ou à 3\n");
      break;
    default:
      printf("i n'est égal à aucun des 'cases'\n");
  }

  return 0;
}
