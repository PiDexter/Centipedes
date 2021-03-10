void updatePosition(int x, int y) {
  int[] nextPosition = {x, y};
  int[] lastPosition = playerPosition[playerElements - 1];

  // Move other player elements up 1 index (except last one)
  for (int i = playerPosition.length - 1; i > 0; i--) {
    playerPosition[i] = playerPosition[i - 1];
  }

  setCellValue(lastPosition[0], lastPosition[1], VISITED_CELL);

  // Set index 0 to new x and y position of player
  playerPosition[0] = nextPosition;
}


void move(int x, int y) {
  
  if (!isInBounds(x, y) || isTail(x, y) || visitedCell(x, y)) {
    return;
  } else {
    updatePlayer(x, y);
  }
}

boolean isInBounds(int x, int y) {
  return (x >= 0 && x < grid.length) && (y >= 0 && y < grid[x].length);
}

boolean visitedCell(int x, int y) {
  return grid[x][y] == VISITED_CELL;
}


boolean canMoveRight() {
  
  int x = getHeadX() + 1;
  int y = getHeadY();
    
  return isInBounds(x, y) && !isTail(x, y) && !visitedCell(x, y);
}

boolean canMoveLeft() {
  
  int x = getHeadX() - 1;
  int y = getHeadY();
    
  return isInBounds(x, y) && !isTail(x, y) && !visitedCell(x, y);
}

boolean canMoveUp() {
  
  int x = getHeadX();
  int y = getHeadY() - 1;
    
  return isInBounds(x, y) && !isTail(x, y) && !visitedCell(x, y);
}

boolean canMoveDown() {
  
  int x = getHeadX();
  int y = getHeadY() + 1;
    
  return isInBounds(x, y) && !isTail(x, y) && !visitedCell(x, y);
}

boolean canMove() {
  return canMoveRight() || canMoveLeft() || canMoveUp() || canMoveDown();
}
