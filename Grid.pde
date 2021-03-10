int cols = 16;
int rows = 8;

int[][] grid;

int totalBananas = 4;
int totalCherries;

void initGrid() {

  createEmptyGrid(cols, rows);

  totalCherries = totalBananas / 2;
  
  setRandomElement(totalCherries, CHERRY);
  setRandomElement(totalBananas, BANANA);
  setRandomElement(totalChameleons(), CHAMELEON);
}

int[][] createEmptyGrid(int cols, int rows) {
  grid = new int[cols][rows];

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j] = EMPTY_CELL;
    }
  }
  
  return grid;
}

void drawGameBoard() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {

      drawEmptyGrid(x, y);
      drawPlayer(x, y);

      if (playerOnFruit(x, y)) {
        drawElements();
      }
      
      if (debugMode) {
       fill(51);
       textAlign(CENTER, CENTER);
       textSize(12);
       text(x + "," + y, xCoordinateCell(x) + cellSize() / 2, yCoordinateCell(y) + cellSize() / 2); 
      }
      
    }
  }
}

void drawEmptyGrid(int x, int y) { 
  fill(cellColor(x, y));
  drawGridCell(x, y);
}



void setBananas(int bananas) {
  totalBananas = bananas;
}



float xGridMargin() {
  return (width - (cols * cellSize())) / 2;
}

float yGridMargin() {
  return (height - (rows * cellSize())) / 2;
}


int getRows() {
  return rows;
}

int getCols() {
  return cols;
}

void setRows(int rows) {
  this.rows = rows;
}

void setCols(int cols) {
  this.cols = cols;
}
