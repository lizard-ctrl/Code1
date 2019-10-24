boolean buttonOn = true;


void setup() {
  size(800, 800);
}
void draw () {
 if (buttonOn) {
    background(234, 97, 255);
    fill(182, 252, 3);
  } else {
    background(182, 252, 3);
    fill(234,97,255);
  }

  rect(450, 700, 90, 50);
}


void mousePressed() {
  float d = dist(500, 700, mouseX, mouseY);
  if (d < 50) {
    buttonOn = !buttonOn;
  }
}
