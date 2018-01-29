
float a=400;
float b=a/1.618;
float x=((b-(a-b))-((a-b)-(b-(a-b))));
float y=(((a-b)-(b-(a-b))-((b-(a-b))-((a-b)-(b-(a-b))))));


void setup() {
  size(400,400);
  rect(0,0,a,b);
  frameRate(1);
}
 
void draw() {
  
  fill(255,0,0,100);
  rect(b,0,(a-b),b);
  
  fill(0,255,0,100);
  rect(b,(a-b),(a-b),(b-(a-b)));
  
  fill(0,0,255,100);
  rect(b,(a-b),((a-b)-(b-(a-b))),(b-(a-b)));
  
  fill(255,0,0,100);
  rect(b,(a-b),((a-b)-(b-(a-b))),((b-(a-b))-((a-b)-(b-(a-b)))));
  
  fill(255,255,0,100);
  rect((b+((b-(a-b))-((a-b)-(b-(a-b))))),(a-b),(((a-b)-(b-(a-b))-((b-(a-b))-((a-b)-(b-(a-b)))))),((b-(a-b))-((a-b)-(b-(a-b)))));
  
 fill(255,100);
 rect((b+((b-(a-b))-((a-b)-(b-(a-b))))),((a-b)+(((a-b)-(b-(a-b))-((b-(a-b))-((a-b)-(b-(a-b))))))),((((a-b)-(b-(a-b))-((b-(a-b))-((a-b)-(b-(a-b))))))),(((b-(a-b))-((a-b)-(b-(a-b))))-(((a-b)-(b-(a-b))-((b-(a-b))-((a-b)-(b-(a-b))))))));
  
  
}
  

  