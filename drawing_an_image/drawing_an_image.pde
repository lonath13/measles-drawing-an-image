// Global Variables
int appWidth, appHeight;
float smallerDimention, largerDimention;
Boolean heightLarger=false, widthLarger=;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
size(800, 600);// landscape
//copy display orientation from android
appWidth = width;
appHeight = height;
//
//Aspect Ratio calculations
//note: dimentions are found in image
//    file/ right click/ properties/ details
int picWidth = 640;
int picHeight = 640;
//
//image orientation
if ( picWidth >= picHeight ) {//True if Landscape or square
  largerDimention = picWidth;
  smallerDimention = picHeight;
  widthLarger = true;
} else {//False if portrait
  largerDimention = picHeight;
  smallerDimention = picWidth;
  heightLarger = true;
};
//
if (widthLarger == true) imageWidthRatio = largerDimention / largerDimention;
if (widthLarger == true) imageHeightRatio = smallerDimention / largerDimention;
if (heightLarger == true) imageWidthRatio = smallerDimention / largerDimention;
if (heightLarger == true) imageHeightRatio = largerDimention / largerDimention;
//
picWidthAdujusted = picWidth * imageWidthRatio;
picHeightAdjusted = picHeight * imageWidthRatio;
//
//population
pic = loadImage("../images/obunga (1).gif");
imageBackgroundX = appWidth * 0;
imageBackgroundY = appHeight * 0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
// rectangle layout and image drawing to canvas
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
if (nightMode == false) tint(255, 128);
if (nightMode == true) tint(65, 65, 50);
//tint(255, 0); //use 1/2 tint walue for white ()i.e. 128/256 = 1/2
//tint(65, 65, 50); //RGB Night Mode
//
image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
