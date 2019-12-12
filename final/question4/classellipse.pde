class Ellipse{
  float xpos;
  float ypos;
  float xsize;
  float ysize;
  float speed;
  
  Ellipse (float tempXpos, float tempYpos, float tempxsize, float tempysize, float tempspeed){
  
    xpos = tempXpos;
    ypos = tempYpos;
      xsize= tempxsize;
  ysize= tempysize;
   speed= tempspeed;
  
  }
  
  void display(){
    pushMatrix();
  translate(xpos, ypos);
  rotate(frameCount * speed);
  ellipse(0, 0, xsize, ysize);

  pushMatrix();
  translate(150, 0);
  ellipse(0, 0, 50, 50);
  popMatrix();
  
  popMatrix();
  }
}
  
