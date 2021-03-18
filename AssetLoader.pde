/*
* SHAPES
 */
PShape selectButton;
PShape buttonSelected;
PShape playButton;

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
* CUSTOM FONTS
 */
PFont squirk;


void loadAssets() {
  createShapes();
  createImages();
  createFonts();
  loadChameleonAnimation();
}


void createShapes() {
  selectButton = loadShape("assets/shapes/button.svg");
  buttonSelected = loadShape("assets/shapes/buttonSelected.svg");
  playButton = loadShape("assets/shapes/playbutton.svg");
  
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
   chameleonBite[i] = loadImage("assets/images/chameleonAnimation/" + i + ".png");
 }
}


void createFonts() {
  squirk = createFont("assets/fonts/Squirk.ttf", 32);
}
