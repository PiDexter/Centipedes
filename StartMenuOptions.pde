/*
*  PLAYER MODE
*/
void drawPlayerMode(float y, float buttonSize) {
  shape(arrowLeft, width / 2 + buttonSize, y, buttonSize, buttonSize);
  shape(arrowRight, width / 2 + buttonSize * 2.8, y, buttonSize, buttonSize);
}


/*
*  BANANA OPTIONS
*/
void drawBananaOptions(int[][] options, float y, float buttonSize) {
  
  float xCenter = calculateButtonsCenterX(options.length, buttonSize);

  for (int i = 0; i < options.length; i++) {
    
    PShape buttonType;
    if (bananaSelected == i) {
      buttonType = buttonSelected;
    } else {
      buttonType = selectButton;
    }
    
    shape(buttonType, xCenter + (buttonSize * i), y, buttonSize, buttonSize);
    

    String text = Integer.toString(options[i][0]);
    drawButtonText(text, xCenter + (buttonSize * i) + (buttonSize / 2), yCenterText(y, buttonSize), WHITE);
    
  }
}


int[] getBananaValue(int[][] options, float x, float y, float buttonWidth) {
  for (int i = 0; i < options.length; i++) {
    
    if (overObject(x + i * buttonWidth, y, buttonSize)) {
      bananaSelected = i;
      return options[i];
    }
    
  }
  
  return options[0];
}


/*
*  GRID SIZE OPTIONS
*/
void drawGridOptions(int[][] options, float y, float buttonSize) {

  float xCenter = calculateButtonsCenterX(options.length, buttonSize);

  for (int i = 0; i < options.length; i++) {
    
    PShape buttonType;
    
    if (gridSelected == i) {
      buttonType = buttonSelected;
    } else {
      buttonType = selectButton;
    }
    
    shape(buttonType, xCenter + (buttonSize * i), y, buttonSize, buttonSize);
    
    String text = gridOptions[i][0] + "\n x \n" + gridOptions[i][1];
    drawButtonText(text, xCenter + (buttonSize * i) + (buttonSize / 2), yCenterText(y, buttonSize), WHITE);
    
  }
}


int[] getGridValue(int[][] options, float x, float y, float buttonSize) {
  
  for (int i = 0; i < options.length; i++) {
    
    if (overObject(x + i * buttonSize, y, buttonSize)) {     
      gridSelected = i;
      return options[i];
    }
    
  }
  
  return options[0];
}


/*
* PLAY BUTTON
 */
void drawFullWidthButton(String buttonText, float x, float y, float buttonSize) {
  int buttonFullWidth = width / 2;
  float textSize = buttonSize / 2;

  shape(playButton, x, y, buttonFullWidth, buttonSize);
  drawButtonText(buttonText, buttonFullWidth, yCenterText(y, buttonSize), textSize);
}
