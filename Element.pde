void setRandomElement(int total, int element) {
  int elementsCreated = 0;
  
  do {
    int x = int(random(cols));
    int y = int(random(rows));
    
    if (cellValueIs(EMPTY_CELL, x, y) && !isPlayer(x, y)) {
      grid[x][y] = element;
    } else {
      continue;
    }

    elementsCreated += 1;
  } while (elementsCreated < total);
}


void drawElements() {
  switch (grid[getHeadX()][getHeadY()]) {

  case CHERRY:
    drawCellShape(cherry);
    break;

  case BANANA:
    drawCellShape(banana);
    break;
  
  case CHAMELEON:
    drawCellShape(chameleon);
    break;
  }
}

// Element logic when player head is on element
void handleGameElements(int x, int y) {
  switch (grid[x][y]) {

  case CHAMELEON:
    removeTailElement();
    break;

  case CHERRY:
    increaseScore(5);
    totalCherries -= 1;
    break;

  case BANANA:
    increaseScore(10);
    totalBananas -= 1;
    break;
  }
}


int elementCount(int cellType) {
  int total = 0;

  for (int x = 0; x < grid.length; x++) {
    for (int y = 0; y < grid[1].length; y++) {
      if (grid[x][y] == cellType) {
        total += 1;
      }
    }
  }
  return total;
}
