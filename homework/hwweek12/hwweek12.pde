// Crediting Daniel Shiffmans Perlin Noise Terrain for reference code


int cols, rows;
int scl = 10;
int w = 1000;
int h = 2000;

float movement = 0;

float[][] design;
import processing.sound.*;
Sound s;


void setup() {
  size(800, 900, P3D);
  cols = w / scl;
  rows = h/ scl;
  design = new float[cols][rows];
  
   SinOsc sin = new SinOsc(this);
  sin.play(250, 0.2);
  sin = new SinOsc(this);
  sin.play(105, 0.2);
   s = new Sound(this);
 
}


void draw() {
float amplitude = map(mouseY, 0, height, .9, 0.0);
s.volume(amplitude);
  movement -= .009;

  float yoff = movement;
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      design[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += .4;
    }
    yoff += .3;
  }



  background(150, mouseY, 54);
  stroke(mouseX, 54,125);
  noFill();

  translate(width/2, height/2);
  rotateX(PI);
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-10; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scl, y*scl, design[x][y]);
      vertex(x*scl, (y+1)*scl, design[x][y+1]);
     
      if (keyPressed){
      rect(x*scl, y*scl, scl, scl);
      }
    }
    endShape();
  }
}
