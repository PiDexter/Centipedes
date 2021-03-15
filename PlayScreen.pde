void play() {
  bgPlay.resize(width, height);
  background(bgPlay);
  if (!gameInitialized) {
    
    initGame();  
    
  } else {
    
    drawScore();
    drawGame();
    noLoop();
    
  }
}


/*
* KEYBOARD CONTROLS
 */
void gamePlayControls() {
  if (keyCode == UP || key == 'w' || key == 'W') {
    move(getHeadX(), getHeadY() - 1);
  } else if (keyCode == DOWN || key == 's' || key == 'S') {
    move(getHeadX(), getHeadY() + 1);
  } else if (keyCode == LEFT || key == 'a' || key == 'A') {
    move(getHeadX() - 1, getHeadY());
  } else if (keyCode == RIGHT || key == 'd' || key == 'D') {
    move(getHeadX() + 1, getHeadY());
  }

  // DEBUG MODE
  if (keyCode==TAB) {
    debugMode = !debugMode;
  }
}
