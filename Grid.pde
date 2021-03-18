int cols;
int rows;

int[][] grid;


void initGrid() {
  createEmptyGrid(cols, rows);
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


void drawEmptyGrid(int x, int y) { 
  drawGridCell(x, y, cellColor(x, y));
}


int getRows() {
  return rows;
}


void setRows(int rows) {
  this.rows = rows;
}


int getCols() {
  return cols;
}


void setCols(int cols) {
  this.cols = cols;
}
