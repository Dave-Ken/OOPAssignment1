class Star {

  float x;
  float y;
  float z;
  float s = random(1,7);
  
  Star(){
  x = random(0, width);
  y = random(0, height);
  z = width;
 }
 
   void update(){
   
   
   }
   
    
   
   void show(){
   fill(255);
   noStroke();
   ellipse(x, y, s, s);
   }
 
 
}