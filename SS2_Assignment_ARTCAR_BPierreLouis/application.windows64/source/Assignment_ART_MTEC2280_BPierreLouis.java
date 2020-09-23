import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Assignment_ART_MTEC2280_BPierreLouis extends PApplet {

/*
Bryan Pierre Louis
Statements/Actions
*/
int wheel = 0;
float wheel2 = 0.0f;
public void setup()
{
  
  
}

public void draw()
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

public void mousePressed(){
if (wheel == 0){
 wheel = 255; 
}
else {
 wheel = 0; 
}
}
  public void settings() {  size(1080, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Assignment_ART_MTEC2280_BPierreLouis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
