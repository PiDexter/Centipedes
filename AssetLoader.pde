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
PImage[] chameleonBite = new PImage[16];

/*
* FONTS
 */
PFont squirk; // custom font


void loadAssets() {
  createShapes();
  createImages();
  createFonts();
  loadChameleonAnimation();
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


void loadChameleonAnimation() {
 for (int i = 0; i < chameleonBite.length; i++) {
   chameleonBite[i] = loadImage("assets/gif/" + i + ".png");
 }
}


void createFonts() {
  squirk = createFont("assets/fonts/Squirk.ttf", 32);
}
