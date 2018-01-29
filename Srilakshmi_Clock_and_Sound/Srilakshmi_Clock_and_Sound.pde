  
import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in;
SinOsc sine;
Reverb reverb;
SawOsc saw;

//Declaring the variables
float e,b,c,d,g,h;
int  i;
void setup() {
  size(500, 500);
  background(255);
 
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "04. Bohemian Rhapsody.mp3");
  file.play();
  file.amp(0);
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
   
    saw = new SawOsc(this);

  
  

}      

void draw() {
  //println(amp.analyze());
  
   
  translate(width/2,height/2);
     float  a= amp.analyze();
  
  if (a>0.005 && a<0.01){
    
background(0);
      pushMatrix();

  fill(255,0,0);
  beginShape();
  vertex(e,b);
  vertex(c,d);
  vertex(g,h);
  endShape(CLOSE);
  
  
  i=millis();
  e=0;
  b=0;
  c=0;
  d=-200;
  g=d*cos(TWO_PI*(i%1000)/1000);
  h=d*sin(TWO_PI*(i%1000)/1000);
  
  
  
    pushMatrix();

    if (g>90 && g<110){
  saw.play();
    delay(1000);
    saw.stop();
  }
    popMatrix();
 
popMatrix();
  

  
  



  
      }

   

}
  

  