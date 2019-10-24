float eye= 400;
float rEyeX=eye-100;
float lEyeX=eye+100;
float eyeYL=450;
float eyeYR=450;
float lPupil=20;
float rPupil=20;

void setup() {
  size (800, 800);
}
void draw () {
  background (152, 252, 3);
  drawGhost(mouseX, mouseY);
}
void drawGhost(float x, float y) {
  drawBody(x, y);
  drawEyes(x, y);
  drawMouth(x, y);
}
void drawBody(float x, float y) {
  noStroke();
  fill(255, 255, 255);
  rect(x, y-100, 20, 300);
  rect(x-20, y-100, 20, 400);
  rect(x-40, y-70, 20, 330);
  rect(x-60, y-70, 20, 320);
  rect(x-80, y-70, 20, 330);
  rect(x-100, y-40, 20, 290);
  rect(x-120, y-40, 20, 310);
  rect(x-140, y-40, 20, 340);
  rect(x-160, y, 20, 320);
  rect(x, y, 20, 300);
  rect(x+20, y-100, 20, 400);
  rect(x+40, y-70, 20, 330);
  rect(x+60, y-70, 20, 320);
  rect(x+80, y-70, 20, 330);
  rect(x+100, y-40, 20, 290);
  rect(x+120, y-40, 20, 310);
  rect(x+140, y-40, 20, 340);
  rect(x+160, y, 20, 320);
}
void drawEyes(float x, float y) {
  fill (154, 3, 255);
  ellipse (x-100, y+50, 70, 70);
  ellipse (x+100, y+50, 70, 70);
    fill (255);
  float mouseDistanceModifier=.07;
  ellipse(x-100 + (mouseX - width/1.5) * mouseDistanceModifier, 
    y+50 + (mouseY - height/1.5) * mouseDistanceModifier, rPupil, rPupil);
  ellipse(x+100 + (mouseX - width/1.5) * mouseDistanceModifier, 
    y+50 + (mouseY - height/1.5) * mouseDistanceModifier, lPupil, lPupil);


}
void drawMouth (float x, float y){
  fill (154, 3, 255);
  ellipse (x, y+150, 20, 90);
}
