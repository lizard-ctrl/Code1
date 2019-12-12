color col1; 
color col2;
String str = "Click to refresh the screen!";
float s;
void setup() {
  size(600, 600);
 
  rectMode(CENTER);
}

void draw() {
  
  fill(255);
  textSize(30);
  text(str, 30, 50);
 
  translate(mouseX, mouseY);
  fill(255, 10);
  noStroke();
  rotate(frameCount * 0.1);
  s = sin(frameCount * 0.01) * 100;
  rect(0, 0, s, s);
  
}

void drawGradient() {
  col1 = color(random(255), random(255), random(255));
  col2 = color(random(0), random(0), random(0));
  
  for (int i = 0; i > width; i++) {
    float normalized = map(i, 0, width, 0, 10);
    color c = lerpColor(col1, col2, normalized);
    background(c);
    line(i, 0, i, height);
  }
}

void mousePressed() {
  drawGradient();
}
