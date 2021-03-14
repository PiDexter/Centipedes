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
  if (checkCollision(x , y)) {
    return;
  } else {
    updatePlayer(x, y);
  }
}

boolean checkCollision(int x, int y) {
  return !isInBounds(x, y) || isTail(x, y) || visitedCell(x, y);
}

boolean isInBounds(int x, int y) {
  return (x >= 0 && x < grid.length) && (y >= 0 && y < grid[x].length);
}

boolean visitedCell(int x, int y) {
  return grid[x][y] == VISITED_CELL;
}


boolean canMoveTo(String text) {

  int x = getHeadX();
  int y = getHeadY();

  switch (text) {

  case "RIGHT":
    x += 1;
    break;

  case "LEFT":
    x -= 1;
    break;

  case "UP":
    y -= 1;
    break;

  case "DOWN":
    y += 1;
    break;
  }

  return isInBounds(x, y) && !isTail(x, y) && !visitedCell(x, y);
}

boolean hasNextMoves() {
  return canMoveTo("RIGHT") || canMoveTo("LEFT") || canMoveTo("UP") || canMoveTo("DOWN");
}
