class Hat {
  float xpos;
  float ypos;
  float xspeed;
  color c;
  
Hat (color tempC, float tempXpos, float tempYpos, float tempXspeed){
  c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
}

void display(){
  fill(c);
  ellipse(xpos+30, ypos+10, 20, 40);
  ellipse(xpos+30, ypos+25, 7, 7);
  ellipse(xpos+25, ypos+15, 5, 5);
  ellipse(xpos+35, ypos+15, 5, 5);
  rect (xpos, ypos, 60, 10);
  rect (xpos+15, ypos-20, 30, 20);
}
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
