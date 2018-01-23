
//Declaring the variables
float a,b,c,d,g,h;
float a1,b1,c1,d1,g1,h1;
int i;

//Setting the size of the screen 
void setup(){
size(500,500);
//frameRate(4);
}


//Drawing the various hands 
void draw(){
  i=millis();
  background(255);
  translate(width/2,height/2);
  
  //Hour Hand - Triangle changes shape every hour 
  pushMatrix();
  fill(255,0,0,50);
  beginShape();
  vertex(a,b);
  vertex(c,d);
  vertex(g,h);
  endShape(CLOSE);
  popMatrix();

  
  a=0;
  b=0;
  c=0;
  d=-200;
  g=d*cos(TWO_PI*(i%3600000)/36000000);
  h=d*sin(TWO_PI*(i%3600000)/36000000);
 
 //Second Hand, each rotation is one second
  pushMatrix(); 
  fill(0,255,0,50);
  beginShape();
  vertex(a1,b1);
  vertex(c1,d1);
  vertex(g1,h1);
  endShape(CLOSE);
  popMatrix();

 a1=0;
  b1=0;
  c1=0;
  d1=-50;
  g1=d*cos(TWO_PI*(i%1000)/1000);
  h1=d*sin(TWO_PI*(i%1000)/1000);


//Each rotation is a minute
  pushMatrix();
  //stroke(100);
  ellipse(0,0,5,5);
  fill(0);
  arc(0,0,50,50,0,TWO_PI*(i%60000)/60000);
  popMatrix();
  
  
  
}