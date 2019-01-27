#include "../include/allum.h"

bool allum(void) {
  GameState state = gameOn;
  Pyramid pyramid;
  if (!initPyramid(&pyramid, 5) || printf("Bienvenue sur Allum!\n") < 0) {
    return false;
  }
  char input[100];
  while (state == gameOn) {  // chaque tour tant que le jeu n'est pas fini
    state = game_loop(&pyramid, input);
    if (state == gameExit) {
      break;
    } else if (state == gameOver) {
      break;
    } else if (state == gameError) {
      return false;
    }
  }
  if (printf("Au revoir!\n") < 0) {
    return false;
  }
  return true;
}

GameState game_loop(Pyramid *pyramid, char *input) {
  if (!displayPyramid(*pyramid) ||
      printf("Qu'allez-vous faire ? (tapez 'aide' pour les options)\n") < 0 ||
      scanf_s("%s", input) == EOF) {
    return gameError;
  }

  if (strcmp(input, "aide") == 0) {
    printf(
        "Options :\n"
        "- 'aide'\taffiche les commandes disponibles\n"
        "- 'retirer'\tprendre une allumette sur la pyramide\n"
        "- 'quitter'\tquitter l'application\n");
  } else if (strcmp(input, "retirer") == 0) {

  } else if (strcmp(input, "quitter") == 0) {
    return gameExit;
  } else {
    printf("Cette commande n'est pas valide.\n");
  }
  return gameOn;
}
