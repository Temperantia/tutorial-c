/*
  Ceci est un commentaire multiligne

  - Standard output
  - main function
  - includes
  - using namespace
  - return
  - data types
  - sizeof
  - typedef
  - statements
  - assignation
  - enums
  - scope
  - constants
  - unsigned
  - cast
*/
// Ceci est un commentaire monoligne

#include <stdio.h> // définition de printf

/**
 * TYPES
 */

typedef int newtype;
enum Console {
  ps4,
  xbox,
  wii
};

typedef
enum color { red, green, blue }
color;

typedef enum Direction { up, right, down, left } Direction;

// définition d'une constante
#define NEWLINE '\n'

// variable globale
int g = 20;

// automatiquement initialisée à 0
int h;

// variable globale partagée entre plusieurs fichiers
extern int n;

// cette variable n'est déclarée qu'une seule fois pour toute utilisation
static int l = 10;

int main(void) {
  char characterToBeInitialized; // déclaration d'un symbole nommé c de type character
  // valeur de range -127 à 127 disponible
  char characterToBeDisplayed = 'c'; // définition d'un symbole nommé d ...

  characterToBeInitialized = 'e'; // assignation via opérateur = de la valeur de type char dans une variable nommé c
  // aka initialisation

  printf("J'affiche un caractère %c et un autre %c\n", characterToBeDisplayed);

  printf("hello\n");

  printf("Size of char : %llu octet\n", sizeof(char));
  printf("Size of int : %llu octets\n", sizeof(int));
  printf("Size of short int : %llu octets\n", sizeof(short int));
  printf("Size of long int : %llu octets\n", sizeof(long int));
  printf("Size of float : %llu octets\n", sizeof(float));
  printf("Size of double : %llu octets\n", sizeof(double));
  printf("Size of wchar_t : %llu octets\n", sizeof(wchar_t));

  int i = 0;
  newtype j = 0;

  enum color color1 = blue;
  color color2 = green;
  printf("color2 value is : %d", color2);

  char pressedKey = 'a';
  Direction currentDirection = -1;
  if (pressedKey == 'a') {
    currentDirection = up;
  } else if (pressedKey == 'b') {
    currentDirection = down;
  }

  printf("global value equals %d\n", g);

  // variable locale non initialisée par défaut -> utilisation dangereuse
  int k;
  // printf("%d\n", k);  // valeur aléatoire
  k = 3;  // OK pour utilisation

  printf("%c", NEWLINE);

  const int CONSTANT = 3;  // cette valeur ne peut en aucun cas être altérée

  unsigned int l = 50000;  // se référer aux types de base du C

  // cette variable n'est définie qu'une seule fois pour tout appel de fonction
  static int m = 5;

  double d = 3.3;
  int casted = (int)d;  // 3

  printf("%d\n", casted);
  return 0;
}
