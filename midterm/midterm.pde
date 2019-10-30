int state=0;
int x= 168;
int y = 315;
int initialTime;
int interval = 1000;
int totalTime = 60000;
int time;
PImage maze;
PImage winner;
PImage loser;
PImage mainscreen;
float hit;
PFont font;
String timeString = "000";




void setup() {
  size (600, 400);
  font = createFont("Arial", 400);
  fill(250);
  mainscreen= loadImage ("mainscreen.jpg");
  maze= loadImage ("maze1.png");
  winner= loadImage ("winner.png");
  initialTime = millis();
  loser= loadImage ("loser.png");
}
void draw() {
  switch (state) {
  case 0:
    begin();
    break;
  case 1:
    date();
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
void date() {
  background(maze);


  hit = red(get(x, y));

  if (hit == 0) 
  {
    println("ouchies!");
    x = 168;
    y = 315;
  }


  image(maze, 0, 0);
  if (millis() - initialTime > interval)
  {
    time = int(millis()/1000);
    timeString = nf(time, 3);
    initialTime = millis();
  }

  text(timeString + " sec", 500, 100);
  if (millis() >= totalTime)
  {
    background(loser);
  }

  ellipseMode(CENTER);
  pushMatrix();
  translate(x, y);
  fill (3, 252, 7);
  ellipse(0, 0, 8, 8);
  popMatrix();


  if (y > 130 && x > 360) {
    background(winner);
  }
}
