// Global Variables
int appWidth, appHeight;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean heightLarger=false, widthLarger= false;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
void setup()
{
  size(1000, 800); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Image Dimensions for Aspect Ratio
  //Obi-wan-star-wars-jedi-23864621-800-600.jpg
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth = 800;
  int picHeight = 600;
  //
  float smallerDimension, largerDimension;
  //Image Orientation: Landscape, Portrait, Square
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  }
  //
  float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
  //Teaching example, width is known to be larger
  //Better Image Stretch Algorithm, smaller image to larger CANVAS
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth;
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
    //
    if ( appHeight >= picHeightAdjusted ) {
      picHeightAdjusted = picHeight;
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
    } else {
      //Image smaller than CANVAS needs separate algorithm
    }
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
  //
}//End setup
//
void draw() {
}//End draw
void keyPressed() {
}//End keyPressed
void mousePressed() {
}//End mousePressed
//
//developer verfied variables
println(appWidth, picWidth, picWidthAdujusted);
println(appHeight, picHeight, picHeightAdjusted);
//
//population
pic = loadImage("../images/obunga (1).gif");
imageBackgroundX = appWidth * 0;
imageBackgroundY = appHeight * 0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
// rectangle layout and image drawing to canvas
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
if (nightMode == false) tint(255, 128);
if (nightMode == true) tint(65, 65, 50);
//tint(255, 0); //use 1/2 tint walue for white ()i.e. 128/256 = 1/2
//tint(65, 65, 50); //RGB Night Mode
//
image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
