
import processing.sound.*;
SoundFile o;
SoundFile n;
SoundFile i;
SoundFile s;
SoundFile e;
PImage noise;


void setup() {
  size (800, 400);
  noise= loadImage ("noise.jpg");
  background (200, 100, 66);
  n= new SoundFile (this, "n.wav");
  o= new SoundFile (this, "o.wav");
  i= new SoundFile (this, "i.wav");
  s= new SoundFile (this, "s.wav");
  e= new SoundFile (this, "e.wav");
}
void draw () {
  image (noise, 0, 0);
  if (keyPressed) {
    if (key == 'n' || key == 'N') {

      n.play();
    }
  } else if (key=='o' || key== 'O') {
    o.play();
    o.amp (0.2);
  } else if (key=='i' || key== 'I') {
    i.play();
  } else if (key=='e' || key== 'E') {
    e.play();
  } else if (key=='s' || key== 'S') {
    s.play();
  }
}
