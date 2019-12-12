Ellipse myEllipse1;
Ellipse myEllipse2;
Ellipse myEllipse3;

void setup() {
  size(600, 600);
  myEllipse1= new Ellipse(200,200,100,100,0.05);
    myEllipse2= new Ellipse(400,400,120,120,.09);
    myEllipse3= new Ellipse(100,500,90,90,.1);
}

void draw() {
  background(0);
  
  myEllipse1.display();
  myEllipse2.display();
  myEllipse3.display();
}
