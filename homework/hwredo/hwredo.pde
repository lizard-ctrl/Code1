Hat myHat1;
Hat myHat2; 
Hat myHat3;
Hat myHat4;
Hat myHat5;
Hat myHat6;

void setup() {
  size(600, 600);

  myHat1 = new Hat(color(77, 255, 0), 0, 130, 3); 
  myHat2 = new Hat(color(150, 196, 22), 0, 30, 1);
  myHat3 = new Hat(color(22, 196, 60), 0, 230, 2); 
  myHat4 = new Hat(color(255, 61, 229), 0, 330, 5);
  myHat5 = new Hat(color(255, 61, 119), 0, 430, 2); 
  myHat6 = new Hat(color(255, 61, 242), 0, 530, 1);
}

void draw() {
  background(229, 255, 61);
  myHat1.drive();
  myHat1.display();
  myHat2.drive();
  myHat2.display();
  myHat3.drive();
  myHat3.display();
  myHat4.drive();
  myHat4.display();
  myHat5.drive();
  myHat5.display();
  myHat6.drive();
  myHat6.display();
}
