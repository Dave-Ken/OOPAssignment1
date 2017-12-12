
//array to store 1000 stars
Star[] stars = new Star[1000];

void setup(){
  size(1200, 600);
  //fullScreen();
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
  
}

void draw(){
  background(#D2D2CB);
   /*for (int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
   }
   */
   
   //Ship
   fill(0);
  rect(55, 55, width-110, height-200, 20);
  
   for (int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
   }
  fill(#FF0000);
  if(  (mouseX > width-110)  || (mouseX < 55)  || (mouseY > height-200)  || (mouseY < 55)){
  fill(#D2D2CB);
  }
  else{
    fill(#FF0000);
  triangle(mouseX, mouseY, mouseX-15, mouseY+20, mouseX+15, mouseY+20);
  }
  
}