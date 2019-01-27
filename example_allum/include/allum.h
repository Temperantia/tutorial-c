#ifndef ALLUM_H_
#define ALLUM_H_

#include "pyramid.h"

typedef enum GameState {
  gameOn,
  gameOver,
  gameExit,
  gameError
} GameState;

bool allum(void); // starts and runs an allum game
GameState game_loop(Pyramid *pyramid, char *input);

#endif