class Hat {
  PVector pos;
  PVector vel;
  PVector acc;
  color c;
  
Hat (color tempC, float x, float y){
  c = tempC;
     pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3));
    acc = new PVector(0, 0);
}

void update (){
   vel.add(acc);
    pos.add(vel);

    acc.mult(0);

    if (pos.x < 50/2) {
      pos.x = 50/2;
      vel.x *= -1;
    } else if (pos.x > width - 50/2) {
      pos.x = width - 50/2;
      vel.x *= -1.1;
    }

    if (pos.y > height - 50/2) {
      pos.y = height - 50/2;
      vel.y *= -1.1;
    }
  }
void display(){
  fill(c);
  ellipse(pos.x+30, pos.y+10, 20, 40);
  ellipse(pos.x+30, pos.y+25, 7, 7);
  ellipse(pos.x+25, pos.y+15, 5, 5);
  ellipse(pos.x+35, pos.y+15, 5, 5);
  rect (pos.x, pos.y, 60, 10);
  rect (pos.x+15, pos.y-20, 30, 20);
}
   void applyForce(PVector force) {
    acc.add(force);
  }
}
