/*
* TEXT ON BUTTON
 */
void drawButtonText(String text, float x, float y, float textSize) {
  fill(WHITE);
  textFont(squirk, textSize);
  textLeading(45);
  textAlign(CENTER, CENTER);
  text(text, x, y);
}


void drawButtonText(String text, float x, float y, int textColor) {  
  fill(textColor);
  textLeading(45);
  textFont(squirk, mediumText);
  textAlign(CENTER, CENTER);
  text(text, x, y);
}


/*
* BUTTON EVENT OBSERVER
 */
boolean overButton(int[] options, float x, float y, float buttonSize) {
  for (int i = 0; i < options.length; i++) {
    if (overObject(x + i * buttonSize, y, buttonSize)) {
      return true;
    }
  }
  return false;
}


// Overloading for 2D array
boolean overButton(int[][] options, float x, float y, float buttonSize) {
  for (int i = 0; i < options.length; i++) {
    if (overObject(x + i * buttonSize, y, buttonSize)) {
      return true;
    }
  }
  return false;
}


boolean overObject(float x, float y, float buttonSize) {
  return mouseX >= x && mouseX < x + buttonSize && mouseY >= y && mouseY < y + buttonSize;
}


// Overloading for custom height parameter
boolean overObject(float x, float y, float buttonSize, float height) {
  return mouseX >= x && mouseX < x + buttonSize && mouseY >= y && mouseY < y + height;
}



float calculateButtonsCenterX(int totalButtons, float squareWidth) {
  return (width - (totalButtons * squareWidth)) / 2;
}


float yCenterText(float y, float squareHeight) {
  return y + squareHeight / 2 - 10;
}
