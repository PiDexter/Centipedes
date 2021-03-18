final int deltaTime = 100; // Time between each frame in miliseconds

int previousDisplayTime = 0;  // Last time in miliseconds frame animation displayed
int countFrames = 0; // Keep track of image number displayed


void animation() {
  if (millis() > previousDisplayTime + deltaTime) {
    countFrames++;

    if (countFrames == chameleonBite.length) { 
      endAnimation();
    }

    previousDisplayTime = millis();

    background(DARK_GRAY);
    
    drawImageAnimation(chameleonBite);
  }
}


void endAnimation() {
  countFrames = 0;
  setGameState(PLAY_GAME);
}

void drawImageAnimation(PImage[] animation) {
  imageMode(CENTER);
  image(animation[countFrames], width / 2, height / 2);
}
