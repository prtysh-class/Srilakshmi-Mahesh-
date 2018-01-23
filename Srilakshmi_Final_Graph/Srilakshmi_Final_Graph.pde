
//generating a random even number
  int rng(){
   int y= round(random(1000));
   int a= (y%2);
   if(a==0){
     println(y);
     
   }
     else if(a!=0){
     println(0);
     y = 0;
 }
   return(y);
}


void setup(){
  size(1000,800);
 background(51);
 
// To ensure that the graph is rotated
    rotate(PI);
    translate(-width,-height);
  
 
//To ensure that the function runs a 1000 times 
pushMatrix(); 
for(int b=0; b<1000;b=b+1){
  int a=rng();

//To ensure that the line plotted is between 400 and 600
if ((a>400)&&(a<600)){

  //To ensure that each line has a differnt colour
 float col= map(a,400,600,100,255);
  stroke((col), random(100));
  strokeWeight(3);
  //To draw the line
    line(b,0,b,a);
  }
}
popMatrix();

//To check if the plots were withinn the parameters
//stroke(255,255,255);
//line(0,400,width,400);
//line(0,600,width,600);

}