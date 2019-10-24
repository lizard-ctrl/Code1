float angle = 0;


void setup() {
  size(800, 800);
  ellipseMode(CENTER);
  background(220,76,23);
}

void draw() {
  if (mousePressed){
  pushMatrix();
  translate(400, 400);
  rotate(random(angle));
  angle -= 7;


  
  float r = map(mouseX, 0, height, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  float b = 255;
  
  fill(g,b,r);
  stroke(b, g, r);
  
  rect(0,0, mouseX * .4, mouseY * .4);
  popMatrix();
  }
  else{
     pushMatrix();
  translate(400, 400);
  rotate(random(angle));
  angle -= 7;


  
  float r = map(mouseX, 0, height, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  float b = 255;
  
  fill(r,g,b);
  stroke(b, g, r);
  
  ellipse(0,0, mouseX * 1, mouseY * 1);
  popMatrix();
  
 
  }
 
}
void mousePressed() {
  saveFrame("screenshot.png");
}
