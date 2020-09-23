
/*
Bryan Pierre Louis
MTEC2280
September 4th, 2020
*/
void setup(){
// Size of Canvas
size(1080, 720);
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
ellipse(mouseX, mouseY,100, 100);

//body of stickyLand chracter
fill(255);
strokeWeight(5);
rect(475, 350,50,75);

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
  
}
