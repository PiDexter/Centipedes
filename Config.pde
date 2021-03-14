/*
* COLORS
*/
final int WHITE = #FFFFFF;
final int GREEN = #00FF00;
final int DARK_GRAY = #202020;
final int LIGHT_GRAY = #cfcfcf;
final int YELLOW = #FFFF00;
final int RED = #FF0000;
final int PURPLE = #660066;

/*
* GAME SETTINGS
*/
int[][] gridOptions = {
  {16, 8}, 
  {20, 10}, 
  {24, 12}, 
  {28, 14}, 
  {32, 16}
};

int[][] bananaOptions = {
  {4},
  {8},
  {12},
  {16},
  {20}
};


/*
* TEXT SIZES
*/
int largeText;
int mediumText;


void loadConfig() {
  initTextSizes();
}


void initTextSizes() {
  largeText = (height * 5) / 100;
  mediumText = (height * 3) / 100;
}
