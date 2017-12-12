int score = 0;
float speed = 7;

class SpaceRock {
  
  //int score = 0;
  int totalScore = 0;
 
  
  float x;
  float y;
  float s = random(15,20);
  float c = random(1,9);
  SpaceRock(){
    
    
    // account  px for screen curve
  x = random(70, width-100);
  y = random(70, height-150);
  
}



  void show(){

    fill(#95C381);
    rect(x, y, s, s, c);   
  }
  
    // ship can look left
   void updateLeft(){
    x +=speed;  
     if(x >= width-70){
           fill(#FFFFFF);
           x = random(70, 70);
           y = random(70, height-200);
      } 
   }
    // ship can look Right
   void updateRight(){
    x -=speed;
    if(x <= 60){
          fill(#FFFFFF);
          x = width-70;
          y = random(70, height-200);
      } 
   }
   // ship can look up
   void updateUp(){
    y +=speed;
    if(y >=height-160){
       fill(#FFFFFF);
       x = random(70, width-70);
       y = 70;
      } 
   }
   
   // ship can look down
   void updateDown(){
    y -=speed;
    if(y <= 55){
         fill(#FFFFFF);
         x = random(70, width-70);
         y =height-200;
      } 
   }
    
   // checks to see if the ships lazer has hit a space rock
  void hit(int rx, int ry){
  
      if(dist(x,y,rx,ry)<=20){
        fill(#162865);
           score = score + 1;
           x = random(70, width-100);
           y = random(70, height-200);   
          }
      }
  }
  //Displays the score
  void printScore(){
    fill(#162865);
    text ("Score : ", 50, 30);
    fill(#162865);
    text ( score, 95, 30);
  }
  
  
 