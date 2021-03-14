void setup() {
  //size(1920, 1080);
  fullScreen();
  surface.setResizable(true);
  surface.setTitle("Centipede by Christiaan Wiggers");
  loadAssets();
  
  loadConfig();
}


void draw() {
  drawGameState();
}


void keyPressed() {
  switch (gameState) {

  case START_MENU:
    break;

  case PLAY_GAME:
    gamePlayControls();
    break;

  case GAME_END:
    gameOverControls();
    break;
  }
  
  loop();
}


void mousePressed() {
  
  switch (gameState) {

  case START_MENU:
    startMenuMouseControl();
    break;

  case PLAY_GAME:
    break;

  case GAME_END:
    break;
  }

  loop();
}
