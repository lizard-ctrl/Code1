
int size = 50; 
float xPos = 0;
float yPos = 0;
float theta; 
float ampl; 
int wave;

void setup() {
  size(600, 600);
    
  wave = height/3; 
  
 
}
void draw() {
  background(0); 

  theta += .05; 

  //create boundaries for your xPos 

  xPos += 1; 

  //use the map function for ampl 

  //fix yPos 
  yPos = sin(theta); 

  fill(255); 
  ellipse(xPos, wave +sin(theta + yPos*.0001)*wave, size, size);
  if (xPos==600){
    xPos=0;
  }
  
}
