int playerScore;


void initScore() {
  playerScore = 0;
}


void drawScore() {
  int margin = 45;

  fill(#FFFFFF);
  textSize(mediumText);
  textAlign(CORNER, LEFT);
  text("Player 1" + "\n" + "Score: " + playerScore, margin * 2, margin * 3);
}


int getPlayerScore() {
  return playerScore;
}


void increaseScore(int points) {
  this.playerScore += points;
}
