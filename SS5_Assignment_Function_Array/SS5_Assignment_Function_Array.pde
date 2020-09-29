/*
Bryan Pierre Louis
September 23, 2020
Assignnment #5
ColoredMind
*/
int num = 7;
int[] nums = new int[8];

void setup(){
 size(600, 600);   
  for(int i=0; i < nums.length; i++)
  {
   nums[i] = int(random(10, 100));
   
  }
}


void draw(){
  background(200);
//triangle(100, 250, 150, 250, 125, 350);
//ellipse(125, 250, 65,65);
ambi(-25, 0, 100, 255, 0, 0);
ambi(-25, 500, 100, 0, 255, 0);
ambi(475, 0, 100, 0, 0, 255);
ambi(475, 500, 100, 100,255 , 150);

Figure(200, 100, 100, 75, 100, 50);

if (mousePressed){
 noStroke();
 fill(random(255), random(255), 255);
 rect(mouseX, mouseY, 100, 100); 
}
stroke(1);
fill(255);
for(int i = 0; i < nums.length; i++)
{
  ellipse(75*i+50, 350, nums[i], nums[i]);
  fill(random(255));
}

}

void ambi(int x, int y, int diameter, int r, int g, int b)
{
  //fill(170, 120, 50); // Cone color
 // triangle(x, y, x+50, y, x+25, y+100);
  fill(r, g, b);
rect(x+25, y, diameter,diameter);
}

void Figure(float x, int y, int diameter, int r, int g, int b)
{
  //fill(170, 120, 50); // Cone color
 
  fill(r, g, b);
fill(255);
// Body
rect(x+20, y+40, diameter/2, diameter);
fill(0);
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
