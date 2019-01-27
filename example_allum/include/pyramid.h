#ifndef PYRAMID_H_
#define PYRAMID_H_

#include <stdbool.h> // bool
#include <stdio.h> // printf, scanf
#include <stdlib.h> // NULL
#include <string.h> // memset

typedef struct Pyramid {
  int rows;
  char **matches;
} Pyramid;

bool initPyramid(Pyramid *pyramid, const int rows);
bool displayPyramid(const Pyramid pyramid);

#endif