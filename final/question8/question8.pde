int grid[][] = 
  {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
  {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
  {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
  {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
  {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
};

float size=15;
int rows = 8, cols = 11; 

void setup() {
  size(600, 600); 
  background(255); 
  noStroke(); 
}

void draw() {
  background(255);
  
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (grid[i][j] == 1) {
        fill(0);
      } else {
        fill(255);
      }

      rect(j*size,i*size,size,size);
    }
  }
}
