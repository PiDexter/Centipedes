final int MAX_BUTTONS_ROW = 5;

float buttonSize;
float rowMargin, rowHeight, titleMargin;
float xPos, yPos;

float[][] rowTitleButtonPos = {
  {-0.1, -0.5}, // Player options
  {0.4}, // Banana options
  {1.7}, // Grid options
  {2.7}, // Play button
};

int bananaSelected;
int gridSelected;

boolean menuInitialized = false;


void initMenu() {
  buttonSize = (width / 2) / MAX_BUTTONS_ROW;
  rowMargin = height * 0.22;
  rowHeight = height * 0.1574;
  xPos = width / 4;
  titleMargin = 30;

  // Default (-1) is none selected
  bananaSelected = -1;
  gridSelected = -1;
}


void menu() {
  bg.resize(width, height);
  background(bg);// Resets the previous graphics
  if (menuInitialized == false) {

    initMenu();  
    //shape(background, 0, 0, width, height);
    menuInitialized = true;
  } else {

    drawMenu();
    noLoop();
  }
}


void drawMenu() {

  // Row 1
  drawRowTitle("PLAYER MODE", rowHeight + rowMargin * rowTitleButtonPos[0][0] - titleMargin);
  drawPlayerMode(rowHeight + rowMargin * rowTitleButtonPos[0][1], buttonSize / 1.5);

  // Row 2
  drawRowTitle("BANANA DIFFICULTY", rowHeight + rowMargin * rowTitleButtonPos[1][0] - titleMargin);
  drawBananaOptions(bananaOptions, rowHeight + rowMargin * rowTitleButtonPos[1][0], buttonSize);

  // Row 3
  drawRowTitle("BOARD SIZE", rowHeight + rowMargin * rowTitleButtonPos[2][0] - titleMargin);
  drawGridOptions(gridOptions, rowHeight + rowMargin * rowTitleButtonPos[2][0], buttonSize);

  // Row 4
  drawFullWidthButton("PLAY GAME", xPos, rowHeight + rowMargin * rowTitleButtonPos[3][0], buttonSize);
}

void drawRowTitle(String text, float y) {
  float textSize = (height * 5) / 100;
  fill(WHITE);
  textSize(textSize);
  textFont(squirk, textSize);
  textLeading(45);
  textAlign(CORNER, LEFT);
  text(text, xPos, y);
}


/*
* MOUSE CONTROLS
 */
void startMenuMouseControl() {
  if (overButton(bananaOptions, xPos, rowHeight + rowMargin * rowTitleButtonPos[1][0], buttonSize)) {
    int[] waarde = getBananaValue(bananaOptions, xPos, rowHeight + rowMargin * rowTitleButtonPos[1][0], buttonSize);
    setBananas(waarde[0]);
  }

  if (overButton(gridOptions, xPos, rowHeight + rowMargin * rowTitleButtonPos[2][0], buttonSize)) {  
    int[] waarde = getGridValue(gridOptions, xPos, rowHeight + rowMargin * rowTitleButtonPos[2][0], buttonSize);
    setCols(waarde[0]);
    setRows(waarde[1]);
  }

  if (overObject(xPos, rowHeight + rowMargin * rowTitleButtonPos[3][0], width / 2, buttonSize)) {
    if (gameOptionsAreSet()) {
      setGameState(PLAY_GAME);
    } else {
      return;
    }
  }
}


boolean gameOptionsAreSet() {
  return bananaSelected != -1 && gridSelected != -1;
}
