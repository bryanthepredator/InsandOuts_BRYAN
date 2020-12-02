#include <Servo.h>  //include Arduino Servo library

Servo servo;  //creates new Servo object called servo


const int SERVOPIN = 9;
int ways = 0;   // Tracks servo position in degrees
int amount = 0; // Tracks incoming value from Serial port




void setup() {
  // put your setup code here, to run once:
  pinMode(10, OUTPUT); // set pin as aoutput, blue LED
  pinMode(11, OUTPUT); // set pin as aoutput, red LED
  pinMode(12, OUTPUT); // set pin as aoutput, yellow LED

  servo.attach(SERVOPIN); //Specifies pin as output for servo
  Serial.begin(9600); // Start serial communication at 9600 bps
  
}

void loop() {
  // put your main code here, to run repeatedly:

  if (Serial.available()){// id data is available to read

    char val = Serial.read();
    
    if(val == 'b'){     // if b received
      digitalWrite(10, HIGH); // turn on blue LED
    }
     if(val == 'r'){     // if r received
      digitalWrite(11, HIGH); // turn on red LED
    }
    if(val == 'y'){     // if y received
      digitalWrite(12, HIGH); // turn on yellow LED
    }
    if(val == 'x'){     // if x received
      digitalWrite(10, LOW); // turn OFF all LEDs
      digitalWrite(11, LOW);
      digitalWrite(12, LOW);
    }  
  }

   if (Serial.available()) { // If data is available to read
    amount = Serial.read(); // read it and store it in val
  }
  if (amount < 255) { //If val is less than 255
    servo.write(amount);  //position of servo is val
    delay(15);
  }

  else if (amount == 255) { //else if val is 255 do a motor sweep

    // scan from 0 to 180 degrees
    for (ways = 0; ways < 180; ways++)
    {
      servo.write(ways);
      delay(15);
    }
    // scan back from 180 to 0 degrees
    for (ways = 180; ways > 0; ways--)
    {
      servo.write(ways);
      delay(20);
    }
    amount = 0; //reset val;
  }

  

}
