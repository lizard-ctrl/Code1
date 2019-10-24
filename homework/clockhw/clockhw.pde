void setup() {
  size (400,600);
}
void draw (){
background (234, 255, 181);
int OneSecond= second ();
int OneMinute= minute ();
int OneHour= hour ();


stroke(251, 255, 0);
fill (255, 181, 253);
  rect(0,0,400, OneSecond*10);
     stroke(25, 255, 0);
fill (175, 181, 253);
  ellipse(width/2,height/2,350, OneHour*29);
  stroke(251, 255, 0);
fill (200, 181, 253);
  ellipse(width/2,height/2,180, OneMinute*3);
   
}
