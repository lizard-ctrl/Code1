/*************************************************
                  SOURCE CODE
  Title: Easing.
  Author: n/a
  Date: n/a
  Availabilty: https://processing.org/examples/easing.html
  
****************************************************/
PImage bg;
PImage kelp;
PImage fishfood;
color bodyColor = color(255,255,255);
color finsColor = color(255,255,255);
float fishX;
float fishY;
float easing = 0.07;
float x;
float y;
float xTwo;
float yTwo;
float xSpeed;
float ySpeed;
float xSpeedTwo;
float ySpeedTwo;
float radius = 15;

void setup() {
  size(700, 400);
  colorMode(HSB);
  bg = loadImage("fishBG.jpg");
  kelp = loadImage("kelp.png");
  fishfood= loadImage("fishfood.png");
  x = width/2;
  y = height/2;
 // xTwo= width/3;
  //yTwo= height/3;
  xSpeed = random(-5, 5);
  ySpeed = random(-5, 5);
 // xSpeedTwo= random(-4,5);
  //ySpeedTwo= random (-4,5);
}

void draw(){
background(bg);
if (mousePressed){
}
else{
 if (x > width - radius|| x < radius) {
    xSpeed *= -1;
  }
  if (y > height - radius || y < radius) {
    ySpeed *= -1;
  }

  x += xSpeed;
  y += ySpeed;
  
  fill(200, 56, 75);
  image(fishfood, x, y, radius*2, radius*2);
}
  
  
  
  // if (x > width - radius|| x < radius) {
   // xSpeedTwo *= -1.2;
 // }
  //if (y > height - radius || y < radius) {
   // ySpeedTwo *= -1.2;
  //}
 // x += xSpeedTwo;
 // y += ySpeedTwo;
  
  //fill(255, 200, 95);
  //ellipse(xTwo, yTwo, 15, 15);
  


cursor(HAND);
bodyColor = color(mouseX/3, 220, 200);
finsColor = color(mouseX/3, 140, 240);

//////////////////////////////EASING///////////////////////////////////
float cursorX = mouseX;
float dx = cursorX - fishX;
fishX += dx * easing;

float cursorY = mouseY;
float dy = cursorY - fishY;
  fishY += dy * easing;
  
/////////////////////////////TURNING//////////////////////////////////
if (fishX > mouseX){
    drawFishLeft(fishX, fishY);
 }else{
    drawFishRight(fishX, fishY);  
 }
 image(kelp, 10, 200); //kelp will show in front of fish
}

//////////////////////////FISH ORIENTATION////////////////////////////

void drawFishLeft(float x, float y){
  drawTail(x,y);
  drawDorsel(x,y);
  drawBody(x,y); 
  drawFin(x,y);
  drawFaceLeft(x,y);
}


void drawFishRight(float x, float y){
  drawTail(x - 60,y);
  drawDorsel(x - 6,y);
  drawBody(x,y); 
  drawFin(x + 4,y);
  drawFaceRight(x,y);
}

/////////////////////////////FISH PARTS////////////////////////////////

void drawBody(float x, float y){
  fill(bodyColor);
  ellipse(x, y, 50, 25);
}

void drawTail(float x, float y){
  fill(finsColor);
  ellipse(x + 30, y, 19, 16);
}

void drawDorsel(float x, float y){
  fill(finsColor);
  ellipse(x + 3, y - 14, 25, 10);
}

void drawFin(float x, float y){
  fill(finsColor);
  ellipse(x - 2, y + 5, 10,5);
}


void drawFaceLeft(float x, float y){
  fill(255);
  stroke(2);
  line(x - 23, y + 5, x - 14, y + 3); 
  ellipse(x - 12, y - 3, 7, 7);
  ellipse(x - 12, y - 3, 1, 1);
}

void drawFaceRight(float x, float y){
  fill(255);
  stroke(2);
  line(x + 23, y + 5, x + 14, y + 3); 
  ellipse(x + 12, y - 3, 7, 7);
  ellipse(x + 12, y - 3, 1, 1);
}

  
