int playerScore;

void initScore() {
  playerScore = 0;
}

void drawScore() {
  float textSize = (height * 2.9) / 100; // Default text size 3.3% of screen height
  float rowMargin = (height * 4.6) / 100; // 4.6% of total screen height is equal to row height between text in pixels
  int margin = 45;
  
  //shapeMode(CORNER);
  shape(scoreBackground, margin, margin);

  fill(#FFFFFF);
  textSize(textSize);
  textAlign(CORNER, LEFT);
  text("Player 1" + "\n" + "Score: " + playerScore, margin * 2, margin * 3);
}


int getPlayerScore() {
  return playerScore;
}

void increaseScore(int points) {
  this.playerScore += points;
}
