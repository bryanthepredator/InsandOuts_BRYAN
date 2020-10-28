/*
 * Bryan Pierre-Louis
 * 10-24-2020
 * THE BOX 
 * not the beginning delay
 * Just the infamous part
 * Check it out
 */

int buttonValue = 0; // State of button

int button = 3;

int LED13 = 13; // Creates variable called LED13 and assign value to 13
int LED12 = 12; //Creates variable caleld LED12 and assign it to 12
int LED11 = 11; //Creates variable caleld LED11 and assign it to 11
int LED10 = 10; //Creates variable caleld LED10 and assign it to 10
int LED9 = 9; //Creates variable caleld LED9 and assign it to 9
const int LED8 = 8; //Creates CONSTant variable called LED8 and assign to 8


void setup() {
  // put your setup code here, to run once:
  // Setting pin's as outputs
pinMode(button, INPUT);
pinMode(13, OUTPUT);
pinMode(12, OUTPUT);
pinMode(11, OUTPUT);
pinMode(10, OUTPUT);
pinMode(9, OUTPUT);
pinMode(8, OUTPUT);
}

void loop() {

  buttonValue = digitalRead(button);
if(buttonValue != 0)
{  
//Led 8 On and off
digitalWrite(LED8, 50); 
delay(5); // miliSceonds
digitalWrite(LED8, 110); 
delay(100); // miliSceonds
digitalWrite(LED8, 180); 
delay(200); // miliSceonds
digitalWrite(LED8, 255); 
delay(300); // miliSceonds
  
  // put your main code here, to run repeatedly:
  
  // DELAY TO Start
  
 // STATE 1
  digitalWrite(9, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);
  delay(410);

  // STATE 2
  digitalWrite(9, LOW);
  digitalWrite(10, HIGH);
  digitalWrite(11, LOW);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);
  delay(500);
  // STATE 3
  digitalWrite(9, HIGH);
  digitalWrite(10, LOW);
  digitalWrite(11, HIGH);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);
  delay(500);

  // STATE 4
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);
  delay(1200);

  // STATE 5
  digitalWrite(9, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  digitalWrite(12, HIGH);
  digitalWrite(13, LOW);
  delay(400);

  // STATE 6
   digitalWrite(9, HIGH);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  digitalWrite(12, LOW);
  digitalWrite(13, HIGH);
  delay(500);

  // STATE 7
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);
  delay(100);

}

else {

 // STATE 7
  digitalWrite(LED8, LOW);
  digitalWrite(9, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);
  delay(100);
  
}
  
  

/*analogWrite(LED8, 100);
delay(800);
analogWrite(LED8, 175);
delay(1000);
analogWrite(LED8, 255);
delay(1000);
*/
}
