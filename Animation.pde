int count = 0;
boolean showAnimation = false;

void drawAnimation() {
  background(DARK_GRAY);
  count++;
  if (count == chameleonBite.length) {
    endAnimation();
  } else {
    image(chameleonBite[count], xCoordinateCell(getHeadX()), yCoordinateCell(getHeadY()));
  }
}

void endAnimation() {
  showAnimation = false;
  count = 0;
  setGameState(PLAY_GAME);
}
