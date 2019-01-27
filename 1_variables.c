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

#include <stdio.h>  // définition de printf

/**
 * TYPES
 */

typedef int NewType;  // définition d'un type alias
typedef enum Color {
  red,
  green,
  blue
} Color;  // définition d'un type d'énumération

#define NEWLINE \
  '\n'  // définition d'une macro, utilisation conseillé par rapport à des
        // constantes

// variables globales, utilisation déconseillé pour risque de collision avec les
// variables locales
int g = 20;
int h;              // automatiquement initialisée à 0
extern int n;       // variable globale partagée entre plusieurs fichiers
static int l = 10;  // cette variable n'est déclarée qu'une seule fois pour
                    // toute utilisation

int main(void) {
  printf("hello\n");

  char character_to_be_initialized;  // déclaration d'un symbole nommé c de type
                                     // character
  // valeur de range -127 à 127 disponible
  char character_to_be_displayed = 'c';  // définition d'un symbole nommé d ...

  character_to_be_initialized =
      'e';  // assignation via opérateur = de la valeur de type char dans une
            // variable nommée c
  // aka initialisation

  printf("J'affiche un caractère %c et un autre %c\n",
         character_to_be_initialized, character_to_be_displayed);

  printf("Size of char : %llu octet\n", sizeof(char));
  printf("Size of int : %llu octets\n", sizeof(int));
  printf("Size of short int : %llu octets\n",
         sizeof(short int));  // short est rarement utilisé, privilégier int
  printf("Size of long int : %llu octets\n",
         sizeof(long int));  // long est rarement utilisé, privilégier int
  printf("Size of float : %llu octets\n", sizeof(float));  // nombre décimal
  printf("Size of double : %llu octets\n",
         sizeof(double));  // nombre décimal avec 2x plus de précision que float
  printf("Size of wchar_t : %llu octets\n",
         sizeof(wchar_t));  // caractère unicode, peu utilisé

  int i = 0;
  NewType j = 0;

  enum Color color1 = blue;
  Color color2 = green;
  printf("color2 value is : %d\n", color2);

  printf("%c", NEWLINE);
  printf("global value equals %d\n", g);
  int k;  // variable locale non initialisée par défaut -> utilisation
          // dangereuse
  // printf("%d\n", k);     // valeur aléatoire
  k = 3;                   // OK pour utilisation
  const int CONSTANT = 3;  // cette variable ne peut en aucun cas être altérée

  // CONSTANT = 4;          // ne compilerait pas
  unsigned int l = 50000;  // non signé, pas de nombre négatif possible
  static int m = 5;  // cette variable n'est définie qu'une seule fois pour tout
                     // appel de fonction

  float d = 3.3;
  int casted = (int)d;        // 3
  // int implicitly_casted = d;  // 3 // cast implicite déconseillé

  int n = 120;
  char c = (char)i;
  char e = 'x';
  printf("%d\n", casted);

  return 0;
}
