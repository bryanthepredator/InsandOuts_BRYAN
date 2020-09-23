/*
Bryan Pierre Louis
MTEC2280 9/12/2020
Ghost-SpiderWeb
*/

float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;
float xspeed = 3;
float yspeed = 1;
PImage img;

void setup() {
img = loadImage("LEBRANOS.jpg");
size(800, 800);
textSize(40);
textAlign(CENTER);

}

void draw() {
  fill(50);
  text(key,100, 100);
  image(img, 100, 100);
 
// Change the location of Ghost by speed
x = x + xspeed;
y = y + yspeed;
if ((x > width) || (x < 0)) {
xspeed = xspeed * -3;
fill(50, 20, 200);
}
if ((y > height) || (y < 0)) {
yspeed = yspeed * -1;
fill(100, 0, 255);
}
background(255);
ellipseMode(CENTER);
rectMode(CENTER);

// Draw Ghost's head
fill(200);

ellipse(x, y-h/2, w, h);
// Draw Ghost eyes
fill(0);
ellipse(x-w/5, y-h/2, eyeSize, eyeSize*2);
ellipse(x+w/5, y-h/2, eyeSize, eyeSize*2);

stroke(0);
//Draw coming down objects
 int z = 50;
  while (z < height/2)
  {
   rect(width/2,z,50,50); 
   z = z + 100;
  }
  
  //red rect
if (mouseX > 100){
   fill(200, 0, 0); 
   rect(400, 200, 100, 100);
}
// Blue RECT
if (mouseX > 200){
   fill(0, 0, 250);
   rect(400, 400, 100, 100);
   
}

stroke(0);
// Make user see
line(100, 0, 100, height);

line(200, 0, 200, height);

 for (int i = 0; i < 900; i++) {
  float r = random(50);
  stroke(r*5);
  line(50, i, 50+r, i);
}

for (int j = 0; j < width; j = j + 20) {
  line(j, 0, height, j);
  stroke(50);
  
}

}
