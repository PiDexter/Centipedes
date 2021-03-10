/*
* SHAPES
*/
PShape selectButton;
PShape buttonSelected;
PShape background;
PShape playButton;
PShape arrowLeft;
PShape arrowRight;

PShape scoreBackground;

PShape cherry;
PShape banana;

/*
* FONTS
*/
PFont squirk; // custom font


void loadAssets() {
  createShapes();
  createFonts();
}

void createShapes() {
  selectButton = loadShape("assets/shapes/button.svg");
  buttonSelected = loadShape("assets/shapes/buttonSelected.svg");
  background = loadShape("assets/shapes/background.svg");
  playButton = loadShape("assets/shapes/playbutton.svg");
  arrowLeft = loadShape("assets/shapes/arrow-left.svg");
  arrowRight = loadShape("assets/shapes/arrow-right.svg");
  cherry = loadShape("assets/shapes/cherry.svg");
  banana = loadShape("assets/shapes/banana.svg");
  
  scoreBackground = loadShape("assets/shapes/scoreBackground.svg");
}

void createFonts() {
  squirk = createFont("assets/fonts/Squirk.ttf", 32);
}
