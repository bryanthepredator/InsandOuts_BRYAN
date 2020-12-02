/*
Bryan Pierre-Louis
MTEC2280
TeddyBear-LightuP
*/

import controlP5.*;
import processing.serial.*;  //import Serial library
int val=0; //to send over Serial

//button interface
int buttonWidth=150;
int buttonHeight=50;
boolean button=false;

Serial myPort;  // create object from Serial class

ControlP5 cp5;
PFont font;

void setup()
{
// Size of Canvas
size(500, 600);


 printArray(Serial.list()); // prints all available serial ports
  
  myPort = new Serial(this, "COM3", 9600);// I have connected arduino to com3, 

  textSize (22);
  textAlign (CENTER, CENTER);
  

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
 // String portName = Serial.list()[0]; //change to match your port
   
   
    // Add button to empty window
  cp5 = new ControlP5(this); //
  font = createFont("Ariel", 20); // custom fonts for buttons and title
   
   cp5.addButton("red") // Red is name of button
  .setPosition(60, 50) // x and y of upperLeft corner
  .setSize(100, 80)
   .setFont(font); // (Width, height)
   
   cp5.addButton("yellow") // Red is name of button
  .setPosition(60, 150) // x and y of upperLeft corner
  .setSize(100, 80)
   .setFont(font); // (Width, height) 
   
    cp5.addButton("blue") // Red is name of button
  .setPosition(60, 250) // x and y of upperLeft corner
  .setSize(100, 80)
   .setFont(font); // (Width, height)
   
   cp5.addButton("alloff") // Red is name of button
  .setPosition(60, 350) // x and y of upperLeft corner
  .setSize(100, 80)
   .setFont(font); // (Width, height)
   
}

void draw()
{
   background(255); 
   stroke(7);
   line(0 ,200 ,500 ,200 );
   
   //// NIGHT SKIES////
   
   line(0 ,400 ,500 ,400 );
   // The sky
   fill(0, 80, 150);
   rect(0,0, 600, 200);
   
   fill(240, 240, 0); // Yellow
   ellipse(500,20, 75, 75); // The sun
   // GROUND
   fill(0, 100, 0);
   rect(0,180,600, 20);
   
   //VOLCANO//
   
   fill(0, 130, 220);
   rect(0,400, 600, 200);
   
   fill(140, 100, 50); // Brown
   triangle(200,600 , 400, 500, 500, 600);// Base of Volcano
   fill(120, 80, 30); // Dbrown
   noStroke();
   ellipse(395, 510, 40, 20); // Top of Volcano
   
   // CRIB//
   fill(100, 65, 15);
   stroke(6);
   rect(250, 300, 200, 100); // Base of house 
   triangle(325, 240, 220, 300, 490, 300); // Top of house
   
   fill(120);
   rect(350, 355, 20, 45); // DOOR
   fill(225);
   rect(290, 330, 30, 35); // WINDOW
   rect(390, 330, 30, 35); // WINDOW2
   
   // Tree//
   
   noFill();
   fill(90, 55, 8);
   rect(120, 275, 20, 125);
   fill(0, 100, 0);
   ellipse(130 ,255 ,120 ,70 );
   noFill();
   
   fill(255);
  text ("UPWARDS SKY", width/2, 100);
  text ("DOWNWARDS VOLCANO", width/2, height-100);
  fill(255, 30, 110);
  text ("MIDDLE HOME", width/2, height/2 - 20);
  
  noFill();
  //mouse location controls communication to Serial 
  val= int (map (mouseY, 0, width, 0, 180)); //remaps mouseY to 0-180  
  myPort.write(val); //write to Serial
  println(val);  //print to console
  
  // Here is the Title to our window
  fill(0, 180, 100); // Green color for 
  textFont(font);
  text("LED CONTROL", 90, 30); // text, x cordinate and y cordinates
  
} 
  void mousePressed() {
  //If button is pressed 
  if (mouseX>width/2-buttonWidth/2 && 
      mouseX<width/2+buttonWidth/2 &&
      mouseY> height/2 - buttonHeight/2 && 
      mouseY< height/2 + buttonHeight/2) {
    button=true;
    myPort.write(255); //write to Serial
  }
  
  println (button); 
  button=false; //returns button state to false;
  
}

/* 
  Add features to our buttons
  Press any button, send specific char over serial port
*/

void red()
{
   myPort.write('r') ;
}
void yellow()
{
   myPort.write('y') ;
}
void blue()
{
   myPort.write('b') ;
}
void alloff()
{
   myPort.write('x') ;
}
