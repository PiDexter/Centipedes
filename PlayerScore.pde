int playerScore;


void initScore() {
  playerScore = 0;
}


void drawScore() {
  int margin = 75;

  fill(WHITE);
  textSize(mediumText);
  textAlign(CORNER, LEFT);
  text("Player 1" + "\n" + "Score: " + playerScore, margin, margin);
}


int getPlayerScore() {
  return playerScore;
}


void increaseScore(int points) {
  this.playerScore += points;
}
