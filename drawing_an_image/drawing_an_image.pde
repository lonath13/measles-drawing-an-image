// Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
size(1000,800);// landscape
//copy display orientation
appWidth = width;
appHeight = height;
//
//population
pic = loadImage("../images/obunga (1).gif");
imageBackgroundX = appWidth * 0;
imageBackgroundY = appHeight * 0;
imageBackgroundWidth = appWidth;
imageBackgroundHeight = appHeight;
// rectangle layout and image drawing to canvas
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
