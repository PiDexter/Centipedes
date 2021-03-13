void gameOver() {
  setGameState(GAME_OVER);
}

void endScreen() {
  background(51);
  fill(#ffffff);
  textSize(largeText);
  textAlign(CENTER, CENTER);
  text("GAME OVER" + "\n" + "Score: " + getPlayerScore(), width / 2, height /2);
  drawOptions();
}

void drawOptions() {
  fill(#ffffff);
  textSize(largeText);
  textAlign(CENTER, CENTER);
  text("Play again? Press \"R\"", width / 2, height / 1.5);
}

void restart() {
  setGameState(START_MENU);
  gameInitialized = false;
  menuInitialized = false;
  loop();
}


/*
*  KEYBOARD CONTROLS
*/
void gameOverControls() {
  if (key == 'r' || key == 'R') {
    restart();
  }
  loop();
}
