class SpaceRock {
  
  float x;
  float y;
  float s = random(10,15);
  float c = random(1,7);
  SpaceRock(){
    
    
    // account 5 px for screen curve
  x = random(55, width-60);
  y = random(55, height-150);
  
}



  void show(){
  
    rect(x, y, s, s, c);
      
  }

}