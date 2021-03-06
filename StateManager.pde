/*
* Global game states
*/
final int START_MENU = 0;
final int PLAY_GAME = 1;
final int ANIMATION = 2;
final int GAME_END = 3;

// Default game state
int gameState = START_MENU;
boolean debugMode = false;


int getGameState() {
  return gameState;
}


void setGameState(int state) {
  gameState = state;
  clear();
}


void drawGameState() {
  switch(gameState) {

  case START_MENU:
    menu();
    break;

  case PLAY_GAME:
    play();
    break;

  case ANIMATION:
    animation();
    break;

  case GAME_END:
    endScreen();
    break;
    
  }
}
