class Star {

  float x;
  float y;
  
  //Store ship Speed
  float speed = 3;
  
  //size of star
  float s = random(1,7);
  
  Star(){
    
  // account 5 px for screen curve
    
  fill(#FFFFFF);
  x = random(55, width-60);
  y = random(55, height-150);

 }
 
   // ship can look left
   void updateLeft(){
     fill(#F61D1D);
    text ("Turning Left", 250, height-90);
    x +=speed;  
     if(x >= width-60){
           fill(#FFFFFF);
           x = random(55, 55);
           y = random(55, height-150);
      } 
    
   }
  
   // ship can look Right
   void updateRight(){
     fill(#F61D1D);
    text ("Turning Right", 250, height-90);
    x -=speed;
    if(x <= 55){
          fill(#FFFFFF);
          x = width-60;
          y = random(55, height-150);
      } 
    
   }
   // ship can look up
   void updateUp(){
     fill(#F61D1D);
    text ("Accending", 250, height-90);
    y +=speed;
    if(y >= height-150){
       fill(#FFFFFF);
       x = random(55, width-60);
       y = 55;
      } 
    
   }
   // ship can look down
   void updateDown(){
    fill(#F61D1D);
    text ("Decending", 250, height-90);
    y -=speed;
    if(y <= 55){
         fill(#FFFFFF);
         x = random(55, width-60);
         y =height-150;
      } 
   }
   
   //display stars
   void show(){
     fill(255);
     noStroke();
     ellipse(x, y, s, s);
   
     if(speed > 10){
       fill(#F61D1D);
       text (speed, width-250, height-70);
       
     }
       if(speed > 8.5 && speed < 10){
         fill(#E8F61D);
         text (speed, width-250, height-70);
       }
     
     if(speed < 8.5){
       fill(#1D89F6);
       text (speed, width-250, height-70);
     }
   

   if(speed >= 10.6){
       fill(#F61D1D);
       text ("Max Speed", width-250, height-90);
     }
     
   if(speed == 0){
       fill(#0011FF);
       text ("Engine Off", width-250, height-90);
     }
   }
 
 
 //Speed ships speed up
 void speedUp(){
   
   if ((speed + .3)< 11){
     speed = speed + .3;
    
   }
   else{
        return;
   }
 }
  //Slow ships speed Down
 void speedDown(){
   
   if(speed <= 1){
     speed=0;
     return;
   }
   else{
     speed = speed - .3; 
   }
 }
 
   void warpSpeed(){
   
     
   }
 }
 