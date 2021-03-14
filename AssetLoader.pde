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

PImage bgMenu;

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

  bgMenu = loadImage("assets/shapes/bg.jpg");
}


void createFonts() {
  squirk = createFont("assets/fonts/Squirk.ttf", 32);
}


/*
* ILLUSTRATION CREDITS
* <a href="https://www.freepik.com/vectors/frame">Frame vector created by upklyak - www.freepik.com</a>
* <a href="https://www.freepik.com/vectors/cartoon">Cartoon vector created by brgfx - www.freepik.com</a>
*/
