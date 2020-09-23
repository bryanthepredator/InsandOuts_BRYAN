/*
Bryan Pierre Louis
September 22, 2020
ColorSwitch
*/

PImage joker;
//Run once
void setup()
{
  background(0);
  joker = loadImage("JOKER_CARDinhand.jpg");
  size (800, 800); // First line of setup 
  rectMode(CENTER);
  textSize(40);
  textAlign(CENTER);
}

//Run continuously
void draw()
{
  background(0);
  fill(68);
  text("Why So Serious?!", 200, 65);
  image(joker, 500, 500);
  
  //Change color to Red
  if(mouseX >= width/2){
   fill(255,0,0); 
  }
  else if(mouseY>= height/2)
  {
    rect(width/2, height/2, 300, 300);
  }
  
  // Change color to Green
  else{
   fill(0,255,0); 
  }
  
  ellipse (width/2, height/2, 300,300);
}
