/*
*  PLAYER MODE
*/
void drawPlayerMode(float y, float squareWidth, float squareHeight) {
  shape(arrowLeft, width / 2 + squareWidth, y, squareWidth, squareHeight);
  shape(arrowRight, width / 2 + squareWidth * 2.8, y, squareWidth, squareHeight);
}



/*
*  BANANA OPTIONS
*/
void drawBananaOptions(int[] options, float y, float squareWidth, float squareHeight) {
  
  float xCenter = calculateButtonsCenterX(options.length, squareWidth);

  for (int i = 0; i < options.length; i++) {
    
    PShape buttonType;
    
    if (bananaSelected == options[i]) {
      buttonType = buttonSelected;
    } else {
      buttonType = selectButton;
    }
    
    shape(buttonType, xCenter + (buttonSize * i), y, squareWidth, squareHeight);
    

    String text = Integer.toString(options[i]);
    drawButtonText(text, xCenter + (squareWidth * i) + (squareWidth / 2), yCenterText(y, squareHeight), WHITE);
    
  }
}

int getBananaValue(int[] options, float x, float y, float buttonWidth, float buttonHeight) {
  for (int i = 0; i < options.length; i++) {
    
    if (overObject(x + i * buttonWidth, y, buttonWidth, buttonHeight)) {
      return options[i];
    }
    
  }
  
  return options[0];
}



/*
*  GRID SIZE OPTIONS
*/
void drawGridOptions(int[][] options, float y, float squareWidth, float squareHeight) {

  float buttonSize = (width / 2) / options.length;
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

int[] getGridValue(int[][] options, float x, float y, float buttonWidth, float buttonHeight) {
  
  for (int i = 0; i < options.length; i++) {
    
    if (overObject(x + i * buttonWidth, y, buttonWidth, buttonHeight)) {     
      gridSelected = i;
      return options[i];
    }
    
  }
  
  return options[0];
  
}
