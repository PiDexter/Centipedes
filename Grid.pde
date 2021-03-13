int cols = 16;
int rows = 8;

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
  fill(cellColor(x, y));
  drawGridCell(x, y);
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

float xGridMargin() {
  return (width - (cols * cellSize())) / 2;
}

float yGridMargin() {
  return (height - (rows * cellSize())) / 2;
}
