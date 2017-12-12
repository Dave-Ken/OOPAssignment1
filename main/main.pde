
//array to store 1000 stars
Star[] stars = new Star[1000];

void setup(){
  //size(1200, 600);
  fullScreen();
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
  
}

void draw(){
  background(0);
   /*for (int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
   }
   */
   
   pushMatrix();
 //translate(width*0.8, height*0.5);
 // rotate(frameCount / -100.0);
  polygon(width/6, height-110, 120, 7);  // Heptagon
  popMatrix();
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}