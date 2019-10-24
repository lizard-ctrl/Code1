void setup() {
  size (400,400);
}
void draw (){
background (234, 255, 181);
int OneSecond= second ();
int OneMinute= minute ();
int OneHour= hour ();

stroke(251, 255, 0);
fill (255, 181, 253);
  rect(0,0,400, OneSecond*5);
  stroke(251, 255, 0);
fill (200, 181, 253);
  rect(0,0,400, OneMinute*1.5);
   stroke(251, 255, 0);
fill (175, 181, 253);
  rect(0,0,400, OneHour*1.2);
}
