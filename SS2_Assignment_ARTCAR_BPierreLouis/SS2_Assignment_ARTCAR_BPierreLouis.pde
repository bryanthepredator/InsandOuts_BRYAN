/*
Bryan Pierre Louis
Statements/Actions
EngineReady/ArtCAR
*/
int wheel = 0;
float wheel2 = 0.0;
void setup()
{
  size(1080, 800);
  
}

void draw()
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

void mousePressed(){
if (wheel == 0){
 wheel = 255; 
}
else {
 wheel = 0; 
}
}
