/*
* SHAPES
 */
PShape selectButton;
PShape buttonSelected;
PShape background;
PShape playButton;
PShape arrowLeft;
PShape arrowRight;

PShape cherry;
PShape banana;
PShape chameleon;

/*
* IMAGES
*/
PImage bgMenu;
PImage bgPlay;
PImage cursorImg;

/*
* FONTS
 */
PFont squirk; // custom font


void loadAssets() {
  createShapes();
  createImages();
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
  chameleon = loadShape("assets/shapes/chameleon.svg");

  
}

void createImages() {
  bgMenu = loadImage("assets/images/bg.jpg");
  bgPlay = loadImage("assets/images/bgPlay.jpg");
  cursorImg = loadImage("assets/images/cursor.png");
}


void createFonts() {
  squirk = createFont("assets/fonts/Squirk.ttf", 32);
}
