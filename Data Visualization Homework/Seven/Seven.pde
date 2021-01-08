//Modularity (split it up into conceptual pieces)

float l = 0;
float m = 0;
float lspeed = 7;
float mspeed = random(15);

float x = 0;
float y = 0;
float xspeed = 2.6;
float yspeed = 8.4;


void setup() {
  size(800, 800);
}

//void is a function's return type. 
void draw() {
  //These functions perform a task and return nothing
  background(0);
  //I need to call the new functions somewhere here or in setup
  displayBall(mouseX,mouseY);
  moveBall();
  checkBallEdges();
  
  displayStar();
  moveStar();
  checkStarEdges();
  star(x, y);
  star(random(800),random(800));
  
}
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
void displayStar() {
  fill(255);
  stroke(0);
}
void moveStar() {
  x = x + xspeed;
  y = y + yspeed;
}
void checkStarEdges(){
  if (x > width|| x < 0) {
    //change direction
    xspeed = xspeed * -1;
  }
  if (y > width|| y < 0) {
    //change direction
    yspeed = yspeed * -1;
  }
  //Blue
  if (y > height- 300|| y < 0) {
    //change color
    fill(0,0,255);
  }
  //Pink
 if (x > width/8|| x < 0) {
    //change color
    fill(255,0,255);
  }
  //red
   if (x > width/3|| x < 0) {
    //change color
    fill(255,0,0);
  }
  //green
   if (x > height-50|| x < 0) {
    //change color
    fill(0,255,0);
  }
}


void displayBall(float l, float m) {
  fill(0,255,255);
  stroke(#3E3DB2);
  ellipse(l, m, 40, 40);
}
void moveBall() {
  l = l + lspeed;
  m = m + mspeed;
}
void checkBallEdges() {
  if (m > width|| m < 0) {
    //change direction
    mspeed = mspeed * -1;
  }
  if (l > width|| l < 0) {
    //change direction
    lspeed = lspeed * -1;
  }
}
