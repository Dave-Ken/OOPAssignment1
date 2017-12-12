class SpaceRock {
  
  int score = 0;
  float x;
  float y;
  float s = random(15,20);
  float c = random(1,9);
  SpaceRock(){
    
    
    // account  px for screen curve
  x = random(70, width-100);
  y = random(70, height-200);
  
}



  void show(){
    fill(#162865);
    text ("Score : ", 50, 30);
    text (score , 95, 30);
    fill(#95C381);
    rect(x, y, s, s, c);
    
    
      
  }
  
  
  void hit(int rx, int ry){
  
    
      if(dist(x,y,rx,ry)<=20){
   
        fill(#162865);
        text ("Score : ", 50, 30);
           score = score + 1;
          text (score , 110, 30);
              
                x = random(70, width-100);
                y = random(70, height-200);
               
      }
  
  }
  }