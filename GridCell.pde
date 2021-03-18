// Grid cell values
final int EMPTY_CELL = 0;
final int VISITED_CELL = -1;
final int PLAYER_ONE = 1;
final int PLAYER_TWO = 2;
final int CHERRY = 5;
final int BANANA = 6;
final int CHAMELEON = 7;

final float CELLSIZE = 2.5; // Percentage of total screen width


void drawGridCell(int x, int y, int cellColor) {
  fill(cellColor);
  rect(xGridMargin() + (cellSize() * x), yGridMargin() + (y * cellSize()), cellSize(), cellSize());
}


void drawCellShape(PShape type) {
  shape(type, xCoordinateCell(getHeadX()), yCoordinateCell(getHeadY()), cellSize(), cellSize());
}


int cellColor(int x, int y) {

  int cellColor = WHITE;

  if (debugMode) {
    if (grid[x][y] == BANANA) {
      cellColor = YELLOW;
    } else if (grid[x][y] == CHERRY) {
      cellColor = RED;
    } else if (grid[x][y] == CHAMELEON) {
      cellColor = PURPLE;
    } else {
      cellColor = WHITE;
    }
  }
  return cellColor;
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


boolean cellValueIs(int value, int x, int y) {
  return grid[x][y] == value;
}


boolean isPlayer(int x, int y) {
  return isHead(x, y) || isTail(x, y);
}
