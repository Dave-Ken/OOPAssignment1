class Star {

  float x;
  float y;
  
  
  float speed = 5;
  
  //size of star
  float s = random(1,7);
  
  Star(){
    
  // account 5 px for screen curve
  x = random(55, width-60);
  y = random(55, height-150);
  z = width-110;
 }
 
   void update(){
    
   }
   // ship can look left
   void updateLeft(){
    x +=speed;  
     if(x >= width-60){
           x = random(55, 55);
           y = random(55, height-150);
      } 
    
   }
  
   // ship can look Right
   void updateRight(){
    x -=speed;
    if(x <= 55){
          x = width-60;
          y = random(55, height-150);
      } 
    
   }
   // ship can look up
   void updateUp(){
    y +=speed;
    if(y >= height-150){
       x = random(55, width-60);
       y = 55;
      } 
    
   }
   // ship can look down
   void updateDown(){
    y -=speed;
    if(y <= 55){
         x = random(55, width-60);
         y =height-150;
      } 
   }
   
   void show(){
   fill(255);
   noStroke();
   ellipse(x, y, s, s);
   }
 
 
}