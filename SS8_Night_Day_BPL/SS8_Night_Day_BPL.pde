/*
Bryan Pierre-Louis
MTEC2280
SensorModer
*/

int val=0; //to send over Serial

//button interface
int buttonWidth=150;
int buttonHeight=50;
boolean button=false;

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup()
{
// Size of Canvas
size(500, 600);

textSize (22);
  textAlign (CENTER, CENTER);
  

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[0]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
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
