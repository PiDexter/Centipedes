int playerElements;
int[][] playerPosition;


void initPlayer() {
  initScore();
  playerElements = 10;
  playerPosition = new int[playerElements][2];

  createStartPosition();
}


void createStartPosition() {
  // Initialize player coordinates (on left side field)
  for (int i = 0; i < getPlayerElements(); i++) {

    playerPosition[i][0] = 0;
    playerPosition[i][1] = i;

    // Rows is maximum rows - 1 since it represents an index
    if (i > rows - 1) {
      // row - i = x-as coordinate oplopend
      playerPosition[i][0] = i - (rows - 1);
      playerPosition[i][1] = rows - 1;
    }
  }
}


void drawPlayer(int x, int y) {
  for (int i = 0; i < playerPosition.length; i++) { 
    if (isHead(x, y)) {
      drawGridCell(x, y, DARK_GRAY);
      break;
    } else if (isTail(x, y)) {
      drawGridCell(x, y, GREEN);
      setCellValue(x, y, PLAYER_ONE);
      break;
    } else if (getCellValue(x, y) == VISITED_CELL) { // Fill cell with grey color when last elements leave 
      drawGridCell(x, y, LIGHT_GRAY);
      break;
    }
  }
}


boolean isHead(int x, int y) {
  return x == getHeadX() && y == getHeadY();
}


boolean isTail(int x, int y) {
  // Tail starts at index 1
  for (int i = 1; i < playerElements; i++) {
    if (x == playerPosition[i][0] && y == playerPosition[i][1]) {
      return true;
    }
  }
  return false;
}


void updatePlayer(int x, int y) {
  updatePosition(x, y);
  handleGameElements(x, y);
}


void removeTailElement() {
  grid[getLastTailPositionX()][getLastTailPositionY()] = VISITED_CELL;

  if (playerElements - 1 > 0) {
    runAnimation(chameleonBite);
    playerElements -= 1;
  } else {
    gameEnd();
  }
}


boolean playerOnFruit(int x, int y) {
  return isHead(x, y) && 
    getCellValue(x, y) == CHERRY || 
    getCellValue(x, y) == BANANA;
}


int getPlayerElements() {
  return playerElements;
}


int getHeadX() {
  return playerPosition[0][0];
}


int getHeadY() {
  return playerPosition[0][1];
}


int getLastTailPositionX() {
  return playerPosition[playerElements - 1][0];
}


int getLastTailPositionY() {
  return playerPosition[playerElements - 1][1];
}
