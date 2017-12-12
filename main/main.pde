
//array to store 1000 stars
Star[] stars = new Star[1000];
SpaceRock[] rocks = new SpaceRock[7];

void setup() {
  size(1200, 600);

  //frameRate(40);
  //fullScreen();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < rocks.length; i++) {
    rocks[i] = new SpaceRock();
  }
  
}

void draw() {

  background(#D2D2CB);
  printScore();
  fill(0);
  //ships Window
  rect(55, 55, width-110, height-200, 20);
  

  //generating stars
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  //generating rock
  for (int i = 0; i < rocks.length; i++) {
    rocks[i].show();
  }
  

  //text ("5.00", width-250, height-70);
  //ship gun 1
  fill(#838383);
  rect(width /2 + width/5, height-200, 15, 55);
  
  //ship gun 2
  //fill(#838383);
 rect(width /2 - width/5, height-200, 15, 55);

  //Target 
  fill(#FF0000);
  if (  (mouseX > width-55)  || (mouseX < 55)  || (mouseY > height-150)  || (mouseY < 55)) {
    fill(#D2D2CB);
  } else {
    fill(#FF0000);
    triangle(mouseX, mouseY, mouseX-15, mouseY+20, mouseX+15, mouseY+20);
  }
  

  
  
}


// ships lazer
void mousePressed() {
  int  rx = mouseX;
  int  ry = mouseY;
  
  

  //gun 1 lazer
  strokeWeight(6);
  stroke(#DBDF67);
  line(width /2 + width/5 + 5 , height-200, rx, ry);
  
  
  //gun 1 lazer
  strokeWeight(6);
  stroke(#DBDF67);
  line(width /2 - width/5 + 5 , height-200, rx, ry);
  
   for (int i = 0; i < rocks.length; i++) {
    rocks[i].hit(rx, ry);
   }
}



//Ship controls
void keyPressed() {
  switch(key){
    // turn ship left
     case 'a':
        for (int i = 0; i < stars.length; i++) {
            stars[i].updateLeft();
        }
            for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateLeft();
        }
     break;
     case 'A':
         for (int i = 0; i < stars.length; i++) {
            stars[i].updateLeft();
          }
           for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateLeft();
        }
     break;
     
     //Turn ship Down
     case 's':
          for (int i = 0; i < stars.length; i++) {
            stars[i].updateDown();
          }
           for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateDown();
        }
     break;
     case 'S':
           for (int i = 0; i < stars.length; i++) {
            stars[i].updateDown();
          }
           for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateDown();
        }
     break;
     
     //Turn ship up
     case 'w':
           for (int i = 0; i < stars.length; i++) {
             stars[i].updateUp();
          }
           for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateUp();
        }
     break;
     case 'W':
           for (int i = 0; i < stars.length; i++) {
            stars[i].updateUp();
          }
     
      for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateUp();
        }
     break;
     // Turn ship right
     case 'd':
           for (int i = 0; i < stars.length; i++) {
            stars[i].updateRight();
          }
          for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateRight();
          }
     break;
     case 'D':
           for (int i = 0; i < stars.length; i++) {
            stars[i].updateRight();
          }
           for (int i = 0; i < rocks.length; i++) {
            rocks[i].updateRight();
          }
     break;
    
     
     //Speed up Ship
     case 'p':
           for (int i = 0; i < stars.length; i++) {
             stars[i].speedUp();
             
          }
     break;
     case 'P':
           for (int i = 0; i < stars.length; i++) {
            stars[i].speedUp();
          }
     break;
     
     // Lower ship speed
     case 'l':
           for (int i = 0; i < stars.length; i++) {
            stars[i].speedDown();
          }    
     break;
     case 'L':
            for (int i = 0; i < stars.length; i++) {
            stars[i].speedDown();
          }
          
     break;
   
    
  } 
  

}