final int DELTA_TIME = 50;    // Time between each frame in milliseconds

int previousDisplayTime = 0;   // Last time in milliseconds frame animation displayed
int countFrames = 0;           // Keep track of image number displayed

PImage[] animation;            // Holds the array of animated images to display


void animation() {
  if (millis() > previousDisplayTime + DELTA_TIME) {
    countFrames++;

    if (countFrames == chameleonBite.length) { 
      endAnimation();
    }

    previousDisplayTime = millis();
    drawAnimation(animation);
  }
}


void endAnimation() {
  countFrames = 0;
  setGameState(PLAY_GAME);
}


void drawAnimation(PImage[] animation) {
  int xPos = width / 2;
  int yPos = height / 2;
  
  background(DARK_GRAY);
  imageMode(CENTER);
  image(animation[countFrames], xPos, yPos);
}


void runAnimation(PImage[] animationName) {
  setGameState(ANIMATION);
  setAnimation(animationName);
}


void setAnimation(PImage[] animationName) {
  animation = animationName;
}
