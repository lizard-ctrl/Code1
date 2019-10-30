// took inspiration and some code from "Maze Game" by Adam McBride
//http://www.openprocessing.org/sketch/476975
//Licensed under Creative Commons Attribution ShareAlike
//https://creativecommons.org/licenses/by-sa/3.0
//https://creativecommons.org/licenses/GPL/2.0/



int state=0;
int x= 168;
int y = 315;
int totalTime = 60;
int time;
int last = 0;
int m = 0;
PImage maze;
PImage winner;
PImage loser;
PImage mainscreen;
float ouch;
PFont font;
String timeString = "000";
import processing.sound.*;
SoundFile game;
String audioName = "gamme.aif";
String path;







void setup() {
  size (600, 400);
  font = createFont("Arial", 400);
  fill(250);
  mainscreen= loadImage ("mainscreen.jpg");
  maze= loadImage ("maze1.png");
  winner= loadImage ("winner.png");
  loser= loadImage ("loser.png");
  path = sketchPath(audioName);
  game = new SoundFile(this, path);
  game.play();
}


void draw() {
  switch (state) {
  case 0:
    begin();
    break;
  case 1:
    date();
    break;
  case 2:
    loser();
    break;
  case 3:
    winner();
    break;
  }
}

void keyPressed() {
  switch (state) {
  case 0:
    if (key == ' ') {
      state = 1;
    }
    break;
  case 1:
    if (key == 'a') {
      state = 0;
    }
  case 2:
    if (key == 'a') {
      state = 0;
    }
  case 3:
    if (key == 'a') {
      state = 0;
    }
  }
  if (key==CODED && keyCode==UP) {
    y-=3;
  }
  if (key==CODED && keyCode==DOWN) {
    y+=3;
  }
  if (key==CODED && keyCode==RIGHT) {
    x+=3;
  }
  if (key==CODED && keyCode==LEFT) {
    x-=3;
  }
}



void begin() {
  background(0, 200, 120);
  image(mainscreen, 0, 0);
}

void loser() {
  background (loser);
}

void winner () {
  background (winner);
}



void date() {
  m=0;
  background(maze);
  ouch = red(get(x, y));
  ellipseMode(CENTER);
  pushMatrix();
  translate(x, y);
  fill (3, 252, 7);
  ellipse(0, 0, 8, 8);
  popMatrix();
  if (ouch == 0) 
  {
    println("ouchies!");
    x = 168;
    y = 315;
  }
  m = totalTime- millis()/1000;
  text(m + "sec", 500, 100);
  switch (state) {
  case 1:
    if (millis() > last+60000) {
      last = millis();
      state=2;
      x=168;
      y=315;
    }
  }
  switch (state) {
  case 1:
    if (y > 130 && x > 360) {
      state=3;
      x= 168;
      y= 315;
    }
  }
}
