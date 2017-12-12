class Star {

  float x;
  float y;
  float z;
  float s = random(1,7);
  
  Star(){
    
  // account 5 px for screen curve
  x = random(55, width-60);
  y = random(55, height-150);
  z = width-110;
 }
 
   void update(){
   
   
   }
   
    
   
   void show(){
   fill(255);
   noStroke();
   ellipse(x, y, s, s);
   }
 
 
}