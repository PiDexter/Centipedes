// Grid cell values
final int EMPTY_CELL = 0;
final int VISITED_CELL = -1;
final int PLAYER_ONE = 1;
final int PLAYER_TWO = 1;
final int CHERRY = 5;
final int BANANA = 6;
final int CHAMELEON = 7;

final float CELLSIZE = 2.5;

void drawGridCell(int x, int y) {
  rect(xGridMargin() + (cellSize() * x), yGridMargin() + (y * cellSize()), cellSize(), cellSize());
}

void drawShape(PShape type) {
  shape(type, xCoordinateCell(getHeadX()), yCoordinateCell(getHeadY()), cellSize(), cellSize());
}




int totalChameleons() {

  int totalEmptyCells = elementCount(EMPTY_CELL) - playerElements;
  int numberOfChameleons = totalEmptyCells * 10 / 100;
  
  // If smaller then 10 player will never lose, so minimum is 10.
  if (numberOfChameleons < 10) {
   numberOfChameleons = 10; 
  }

  return (int) Math.ceil(numberOfChameleons);
}


float cellSize() {
  return (width * CELLSIZE) / 100;
}

int getCellValue(int x, int y) {
  return grid[x][y];
}

void setCellValue(int x, int y, int value) {
  grid[x][y] = value;
}

float xCoordinateCell(int x) {
  return xGridMargin() + cellSize() * x;
}

float yCoordinateCell(int y) {
  return yGridMargin() + cellSize() * y;
}


boolean cellIsEmpty(int x, int y) {
  return grid[x][y] == EMPTY_CELL;
}

boolean isPlayer(int x, int y) {
  return isHead(x, y) || isTail(x, y);
}
