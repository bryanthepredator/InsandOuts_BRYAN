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
 
}

void car()
{
  background(255);
 //Wheel of Car
 fill(wheel);
  ellipse(100,500,100,100);
  //Wheel2 of car
  fill(wheel2);
  ellipse(300, 500, 100, 100);
  
  //Body of car
  fill(100);
  rect(75, 350, 300, 100);
  fill(0);
  rect(125,300, 125, 75);
  
  for (int i = 0; i < 900; i++) {
  float r = random(50);
  stroke(r*5);
  line(50, i, 50+r, i);
}
  
  
}
