int count = 0;
boolean showAnimation = false;

void drawChameleonAnimation() {
  if (count == 16) {
    showAnimation = false;
    count = 0;
    noLoop();
  } else {
   image(chameleonBite[count], xCoordinateCell(getHeadX()), yCoordinateCell(getHeadY())); 
  }
}
