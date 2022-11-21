//global variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
PImage pic2;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(600, 600); //square
  //Copy Display Algorithm from Hello World
  //fullScreen(); //displayWidth, displayHeigth
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic2 = loadImage("../images/obunga new.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topHalfX = appWidth * 1/4;
  topHalfY = appHeight * 1/20;
  topHalfWidth = appWidth * 1/2;
  topHalfHeight = appHeight * 13/20;
  bottomHalfX = appWidth *1/2;
  bottomHalfY = appHeight * 3/4;
  bottomHalfWidth = appWidth * 1/4;
  bottomHalfHeight = appHeight * 4/20;
  //
  //Image Dimensions for Aspect Ratio
  //Note: meta explored in MP3's or music file
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth3 = 457; //obunga portrait
  int picHeight3 = 720;
  //
  //Image Orientation: Landscape, Portrait, Square
  //scaling image size with aspect ratio requires larger dimention
  float  smallerDimension3;
  float  largerDimension3;
  float imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  //
    if ( picWidth3 <= picHeight3 ) { //portrait
      largerDimension3 = picWidth3;
      smallerDimension3 = picHeight3;
      //
      picWidthAdjusted3 = bottomHalfWidth; //from rect() layout
      imageHeightRatio3 = smallerDimension3 / largerDimension3;
      picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
    } else { //False if Portrait
      largerDimension3 = picHeight3;
      smallerDimension3 = picWidth3;
      //
      picWidthAdjusted3 = bottomHalfHeight; //from rect() layout
      imageWidthRatio3 = smallerDimension3 / largerDimension3;
      picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
    }
    //
    //Rectangular Layout and Image Drawing to CANVAS
    //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    //rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
    //rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom half
    //
    //Background Image must be single executed code
    if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  }
  //
}//End setup
//
void draw()
{
  image( pic2, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic2, topHalfX, topHalfY, topHalfWidth, topHalfHeight);
  image( pic2, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //
  //Mouse Pressed will control background image
  if (mouseButton == LEFT) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image( pic2, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
    //
  }
  if (mouseButton == RIGHT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    image( pic2, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
}//End mousePressed
//
//End Main Program
