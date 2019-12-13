Hat myHat1;
Hat myHat2; 
Hat myHat3;
Hat myHat4;
Hat myHat5;
Hat myHat6;
PVector gravity = new PVector(0, 0.5);
PImage boot;


void setup() {
  size(600, 600);
boot= loadImage ("boot.png");
  myHat1 = new Hat(color(77, 255, 0), 300,300); 
  myHat2 = new Hat(color(150, 196, 22), 300,300);
  myHat3 = new Hat(color(22, 196, 60), 300,300); 
  myHat4 = new Hat(color(255, 61, 229), 300,300);
  myHat5 = new Hat(color(255, 61, 119), 300,300); 
  myHat6 = new Hat(color(255, 61, 242), 300,300);
}

void draw() {

  background(229, 255, 61);
    image (boot, mouseX, mouseY);
  myHat1.applyForce(gravity);
  myHat1.update();
  myHat1.display();
  myHat2.applyForce(gravity);
  myHat2.update();
  myHat2.display();
  myHat3.applyForce(gravity);
  myHat3.update();
  myHat3.display();
  myHat4.applyForce(gravity);
  myHat4.update();
  myHat4.display();
  myHat5.applyForce(gravity);
  myHat5.update();
  myHat5.display();
  myHat6.applyForce(gravity);
  myHat6.update();
  myHat6.display();
 
  
  
}
