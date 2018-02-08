import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

float ballX=250, ballY=0;
float ballSize = 20;
float ballColor = color(255);
float gravity =0.04;
float verticalspeed=0;
float airfriction = 0.0001;
float friction = 0.1;

int i;
int LDRValue=0;


void setup() {
  size(500,500);
    arduino = new Arduino(this, Arduino.list()[0], 57600);
   
    arduino.pinMode(LDRValue, Arduino.INPUT);
}

void draw() {
  
  pushMatrix();
  background(0);
  fill(255);
  stroke(0);
  ellipse(ballX, ballY, ballSize, ballSize);
  
  
verticalspeed+=gravity;
ballY+=verticalspeed;
verticalspeed -= (verticalspeed * airfriction);
if(ballY<height){
  ellipse(ballX, ballY, ballSize, ballSize); 
  }
  
  if(ballY>height){
    textSize(32);
text("you loose", 150, 250); 
fill(0, 102, 153);
  }
  

if(ballY+(ballSize/2)>height){
  fill(0);
  ellipse(ballX, ballY, ballSize, ballSize);
;

}
  if (ballY-(ballSize/2) < 0) {
     ballY = 0+(ballSize/2);
  verticalspeed*=-1;
  verticalspeed -= (verticalspeed * friction);
  ellipse(ballX, ballY, ballSize, ballSize);
  }  
  popMatrix();
  
  pushMatrix();
 
   i=millis();
  translate(450,60);
  stroke(100);
  fill(255);
  ellipse(0,0,50,50);
  fill(0);
  arc(0,0,50,50,0,TWO_PI*(i%60000)/60000);
  popMatrix();
{
   int g = arduino.analogRead(LDRValue);
  println(g); 
if(g>40&&g<50){
   verticalspeed+=gravity;
ballY+=verticalspeed;
verticalspeed -= (verticalspeed * 1.98);
if(ballY<height){
  ellipse(ballX, ballY, ballSize, ballSize); 
  }
}
}
}