float x = 0;
float y = 0;
float xspeed = 3.8;
float yspeed = 5.3;
class Stars {

  void star(float x, float y) {
    //hardcoding a series of vertices
    beginShape();
    vertex(x, y-50 );
    vertex(x+14, y-20 );
    vertex(x + 47, y -15 );
    vertex(x +23, y+7);
    vertex(x +29, y +40 );
    vertex(x, y +25 );
    vertex(x -29, y + 40 );
    vertex(x -23, y +7);
    vertex(x - 47, y - 15);
    vertex(x -14, y - 20);
    endShape(CLOSE);
  }

  void moveStar() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  
  void displayStar() {
    fill(255);
    stroke(0);
  }
  
  
  void checkStarEdges() {
    if (x > width|| x < 0) {
      //change direction
      xspeed = xspeed * -1;
    }
    if (y > width|| y < 0) {
      //change direction
      yspeed = yspeed * -1;
    }
  }
  
  void mousePressed(){
    background(#1C3486);
  }
  
  
  void changeColor() {
    //Blue
    if (y > height- 300|| y < 0) {
      //change color
      fill(0, 0, 255);
    }
    //Pink
    if (x > width/8|| x < 0) {
      //change color
      fill(255, 0, 255);
    }
    //red
    if (x > width/3|| x < 0) {
      //change color
      fill(255, 0, 0);
    }
    //green
    if (x > height-50|| x < 0) {
      //change color
      fill(0, 255, 0);
    }
  }
}
