int mov=10;
float[] xPos=new float[mov];
int x;

void setup() {
  size(600, 600);


  for (int i=0; i<mov; i++) {
    xPos[i]=20;
   
  }

  noStroke();
}

void draw() {
  background(50);
  for (int i = 0; i < mov; i++) {
    float y = 30 + i * 60;
 fill(0,255,60);
    ellipse(xPos[i], y, 50, 50);
   
    if (dist(mouseX, mouseY, xPos[i], y)<50) {
      xPos[i]+=8;
      fill(100,50,60);
       ellipse(xPos[i], y, 50, 50);
    }

    
  }
}
