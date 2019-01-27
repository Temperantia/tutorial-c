#include "../include/pyramid.h"

bool initPyramid(Pyramid *pyramid, const int rows) {
  pyramid->rows = rows;
  if ((pyramid->matches = (char **)malloc(sizeof(char *) * rows)) == NULL) {
    return false;
  }
  size_t size;
  for (int r = 0; r < rows; r++) {
    size = sizeof(char) * 2 * r + 1;
    if (((pyramid->matches[r] = (char *)malloc(size + 1)) ==
         NULL) ||
        (memset(pyramid->matches[r], '|', size) == NULL)) {
      return false;
    }
    pyramid->matches[r][size] = '\0';
  }
  return true;
}

bool displayPyramid(const Pyramid pyramid) {
  if (pyramid.matches == NULL) {
    return false;
  }
  for (int r = 0; r < pyramid.rows; r++) {
    printf("%s\n", pyramid.matches[r]);
  }
  return true;
}
