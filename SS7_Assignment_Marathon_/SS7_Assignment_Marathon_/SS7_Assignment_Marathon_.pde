import processing.serial.*;
Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup(){
// Size of Canvas
size(1080, 720);

printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);

}

void draw()
{
//Graasslands
fill(0, 230, 0);
rect(0,500,1080, 500);

//Sun
fill(500, 1000, 0);
ellipse(1000, 100, 300,300);


noFill();


/*
This the head paret of Sticky
*/
strokeWeight(4);
ellipse(500, 300, 100,100);
fill(30,15, random(175));
ellipse(mouseX, 75,100, 100);

//body of stickyLand chracter
fill(255);
strokeWeight(5);
rect(475, 350,val,75);

//Left Arm
strokeWeight(3);
line(475, 380, 400, 350);


//Right Arm
strokeWeight(3);
line(525, 380, 600, 350);

//LeftLeg

line(475, 425, 450, 500);

//Rightleg
line(525, 425, 550, 500);

 if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }

  //draws an ellipse that grows and shrinks in relation to val
  //background(255);
  fill (0);
  //ellipse (width/2, height/2, val, val);
  //println (val); //prints to Processing console
  
}
