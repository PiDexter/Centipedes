boolean gameInitialized = false;

int totalBananas; // Default 20 bananas in a game
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


int totalChameleons() {

  int totalEmptyCells = elementCount(EMPTY_CELL) - playerElements;
  int numberOfChameleons = totalEmptyCells * 10 / 100;
  
  // If smaller then 10 player will never lose, so minimum is 10.
  if (numberOfChameleons < 10) {
   numberOfChameleons = 10; 
  }

  return (int) Math.ceil(numberOfChameleons);
}
