/**
 * arrays
 * strings (c++)
 * pointers
 * refs (c++)
 * structures
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Book {
  char title[50];
  char author[50];
  int id;
} Book;
/*
struct Book {
    char title[50];
    char author[50];
    int id;
};
typedef struct Book Book;
*/

int *getArray() {
  static int array[] = {2, 3};

  printf("Le tableau a l'adresse suivante : %p\n", array);

  return array; // dégradation en pointeur
}

char *getCharArray() {
  static char array[] = {'H', 'e', 'l', 'l', 'o', '\0'};

  return array;
}

int main() {
  int array[10];

  int initArray[2] = {2, 3};

  printf("%d\n", initArray[0]);

  char *string1 = getCharArray();
  int i = 0;
  while (string1[i] != '\0') {
    printf("%c", string1[i]);
    ++i;
  }
  printf("\n");
  char *string2 = "Hello";
  printf("%s\n", string2);

  printf("Le pointeur a maintenant l'adresse du tableau : %p\n", getArray());

  // Déréférencement
  int j = 20;
  int *p = &j;

  printf("Adresse %p contient la valeur %d\n", p, *p);

  struct Book book1;
  Book book2;

  book1.id = 3;
  strcpy_s(book1.title, 50, "title");
}
