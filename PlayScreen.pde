boolean gameInitialized = false;

void play() {
  background(0);
  
  if (gameInitialized == false) {
    
    initPlayer();  
    initGrid(); 

    gameInitialized = true;
    
  } else {

    drawScore();
    drawGameBoard();
    noLoop();
  }
}

void drawGameBoard() {
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



/*
* KEYBOARD CONTROLS
*/
void gamePlayControls() {
  if (keyCode==UP || key == 'w') {
    move(getHeadX(), getHeadY() - 1);
  } else if (keyCode==DOWN || key =='s') {
    move(getHeadX(), getHeadY() + 1);
  } else if (keyCode==LEFT || key=='a') {
    move(getHeadX() - 1, getHeadY());
  } else if (keyCode==RIGHT || key =='d') {
    move(getHeadX() + 1, getHeadY());
  }
  
  // DEBUG MODE
  if (keyCode==TAB) {
    debugMode = !debugMode;
  }
}
