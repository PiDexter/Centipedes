void setup() {
  size(1920, 1080);
  //fullScreen();

  loadAssets();
  loadConfig();

  surface.setResizable(true);
  surface.setTitle("Centipedes by Christiaan Wiggers");

  cursor(cursorImg);

  
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
    gameEndControls();
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
