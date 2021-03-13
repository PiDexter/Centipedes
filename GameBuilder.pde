boolean gameInitialized = false;

int totalBananas = 4;
int totalCherries;

void initGame() {
  initPlayer();  
  initGrid(); 
  
  setRandomElement(totalBananas, BANANA);
  setRandomElement(totalCherries(), CHERRY);
  setRandomElement(totalChameleons(), CHAMELEON);
  
  gameInitialized = true;
}

void drawGame() {
  for (int x = 0; x < getCols(); x++) {
    for (int y = 0; y < getRows(); y++) {

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

void setBananas(int bananas) {
  totalBananas = bananas;
}

int totalCherries() {
 return totalCherries = totalBananas / 2; 
}
