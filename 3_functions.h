// Création d'une garde pour prévenir la re-définition du contenu du header lors
// de multiples inclusions
#ifndef _3_FUNCTION_H  // directive (#) vérifiant si le symbole suivant est
                       // défini, si non, déclenche jusqu'à une directive #endif
                       // un bloc d'éxécution
#define _3_FUNCTION_H

#define GRAVITY 9.8

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "./example_allum/include/pyramid.h"

void print(int i);
int twice(int i);  // déclaration d'une fonction
// int twice(int); // valide


// - doit contenir :
//   - déclaration de fonction // prototype
//  - macros
//  - includes
// - structure
// - enum
// - typedef
#endif