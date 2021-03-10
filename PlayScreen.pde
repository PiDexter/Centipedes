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
