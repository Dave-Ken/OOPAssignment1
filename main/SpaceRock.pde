int score = 0;
float speed = .1;

class SpaceRock {
  
  float x;
  float y;
  // allows all rocks to be given a  random size
  float s = random(15,20);
  // allows the rocks to look diferent by giving them a random curve
  float c = random(1,9);
  SpaceRock(){
    
    
    // account 15 px for screen curve
  x = random(70, width-100);
  y = random(70, height-150);  
}

// create rocks
  void show(){
    fill(#95C381);
    rect(x, y, s, s, c);   
  }
  
    // ship can look left without the spacerocks remaining in a fixed position on the ships screen
   void updateLeft(){
    x +=speed;  
     if(x >= width-70){
           fill(#FFFFFF);
           x = random(70, 70);
           y = random(70, height-200);
      } 
   }
    // ship can look Right without the spacerocks remaining in a fixed position on the ships screen
   void updateRight(){
    x -=speed;
    if(x <= 60){
          fill(#FFFFFF);
          x = width-70;
          y = random(70, height-200);
      } 
   }
   // ship can look up without the spacerocks remaining in a fixed position on the ships screen
   void updateUp(){
    y +=speed;
    if(y >=height-160){
       fill(#FFFFFF);
       x = random(70, width-70);
       y = 70;
      } 
   }
   // ship can look down without the spacerocks remaining in a fixed position on the ships screen
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
    if(score% 10 == 0){
    speed =+.1;
    }
    float random = random(1,4);
    int move = int(random);
    move(move);
  }
  
  void move(int m){
  
  float randomT=random(15,20);
  
  int moveX = int(randomT);
  
   //move rocks left with out user interaction
    if(m== 1){
      for(int i=0; i <moveX;i++){
       for (int j = 0; j < rocks.length; j++) {
            rocks[j].updateLeft();
        }
     }
    }
    
    // not needed the refresh rate causes the space rocks to move in a unpleasant way when they can move in all directions
    //move rocks righ with out user interaction
   /* if(m == 2){
    for(int i=0; i <moveX;i++){
     
         for (int j = 0; j < rocks.length; j++) {
              rocks[j].updateRight();
          }
     }
    }*/
    
    //move rocks up with out user interaction
    if(m == 3){
    for(int i=0; i <moveX;i++){
     
      for (int j = 0; j < rocks.length; j++) {
            rocks[j].updateDown();
        }
     }
    }
    // not needed the refresh rate causes the space rocks to move in a unpleasant way when they can move in all directions 
    //move rocks down with out user interaction
   /* if(m == 4 ){
    for(int i=0; i <moveX;i++){
     
     for (int j = 0; j < rocks.length; j++) {
            rocks[j].updateDown();
        }
     }
    }*/
  }
  