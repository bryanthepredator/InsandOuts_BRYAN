/*
Bryan Pierre Louis
MTEC2280
Combination Final Sketch
*/

// Decalre Assigned Values

float x;
float i = 0;
float j = 0;
float iSpeed = 18;
float jSpeed = 5;
int wheel = 0;
float wheel2 = 0.0;
int carMovement = 0;
void setup()
{
  size(700, 700);
  background(0);
  x = 400;
}

void draw()
{
  
  //Ground
 noStroke();
 x = x+30;
 if(x > width)
 {
  x = 0; 
 }
 // Ground Color//
 fill(random(255), random(255), 255);
 ellipse(x, 550,100, 100);
  fill(random(255), random(255),random( 255));
 ellipse(x, 625, 100, 100);
  fill((255), random(255),random (255));
 ellipse(x, 700, 100, 100);
 // Ground Color//
 
 // Bouncing Ball//
 noFill();
 stroke(1);
 fill(255);
 //Speed of ball
 
 /////ACross the screen
 fill(random(255),random( 255), 150);
 i = i + iSpeed;
 if(i > width || i < 0)
 {
  iSpeed = iSpeed * -1; 
 }
 
 /////Up an Down screen
 
 j = j + jSpeed;
  if(j > height || j < 0)
 {
  jSpeed = jSpeed * -j; 
 }
 
 ellipse(i, j, 50, 50);
// car(x + 100, y+100);
}

void car(int x, int y)
{
  
 //Wheel of Car
 fill(240);
  ellipse(x+100,y+500,100,100);
  //Wheel2 of  car
  fill(random(100));
  ellipse(x + 300, y +500, 100, 100);
  
  //Body of car
  fill(100);
  rect(x+ 75, y+350, 300, 100);
  fill(random(255), 0, 55);
  rect(x+125,y+300, 125, 75);
  /*
  for (int i = 0; i < 900; i++) {
  float r = random(50);
  stroke(r*5);
  line(0, i, 50, i);
  */
}
  
