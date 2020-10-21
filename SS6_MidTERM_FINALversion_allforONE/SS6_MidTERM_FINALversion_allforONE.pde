/*
Bryan Pierre Louis
MTEC2280
Combination MidTerm Sketch
Rainbow Racewayyy
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
int mode; // 1: intro screen, 2: Game, 3: game over screen
void setup()
{
  size(700, 700);
  background(0);
  x = 680;
}

void draw()
{ 
  //Ground
 noStroke();
 x = x - 30;
 if(x < 0)
 {
  x = 700;
 }
 
 // Ground/Road Color//
 fill(random(255), random(255), 255);
 ellipse(x, 550,100, 100);
  fill(random(255), random(255),random( 255));
 ellipse(x, 625, 100, 100);
  fill((255), random(255),random (255));
 ellipse(x, 700, 100, 100);
 
 
 // Bouncing Ball/ Background ROAD//
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
 Figure(340, 250, 100, 255,10, 0);
 car(200,50, 25, 25);
 Figure(150, 280, 100, 50, 180, 50);
 car(20, 75, 20, 20);
 
 
 ///////Mario name TAG/////
 PFont f = createFont("Georgia", 25);
 String mario = "Mario";
 fill(random(255), 0, 0);
 
 textFont(f);
 textSize(25);
 text(mario, 350, 180);
 
 ///////Luigi name TAG/////
 PFont fav = createFont("Georgia", 25);
 String luigi = "Luigi";
 fill(0, random(200), 0);
 
 textFont(fav);
 textSize(25);
 text(luigi, 160, 205);
 
 /////Title of Game////
 PFont star = createFont("Georgia", 65);
 String starRoad = "Rainbow Road";
 textFont(star);
 textSize(65);
 
 //text(starRoad, 155, 80);
 float eX = 10;
 for(int i = 0; i < starRoad.length(); i++){
   char c = starRoad.charAt(i);
   fill(random(255), random(255), random(255));
   text(c ,eX, 100);
   eX = eX + textWidth(c);
 }
}

void car(int x, int y, int size, int size2)
{
  
 //Wheel of Car
 fill(240);
  ellipse(x+100,y+500,size+100,size + 100);
  //Wheel2 of  car
  fill(random(100));
  ellipse(x + 300, y +500, size + 100,size2+ 100);
  
  //Body of car
  fill(100);
  rect(x+ 75, y+350,size+300, size2+100);
  fill(random(255), 0, 55);
  rect(x+125,y+300,size+ 125, size2+75);
  /*
  for (int i = 0; i < 500; i++) {
  float r = random(50);
  stroke(r*2);
  line(0, i, 50, i);
  }
  */
}

void Figure(float x, int y, int diameter, int r, int g, int b)
{
  //fill(170, 120, 50); // Cone color
 
fill(255);
// Body
rect(x+20, y+40, diameter/2, diameter);
fill(200, 25, 20);
fill(r, g, b);
// Head
ellipse(x+45, y, diameter,diameter);

/*
Arms and legs
*/

//left legg 
fill(140);
rect(x-5, y+130, diameter/5, diameter/2); 

//right leg
rect(x+75, y+130, diameter/5, diameter/2);

//left arm
rect(x-40, y+50, diameter/2, diameter/4);

//right arm
rect(x+80, y+50, diameter/2, diameter/4);

}
  
