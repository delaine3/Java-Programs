Stars a;
Stars b;


void setup() {
  size(800, 800);
  a = new Stars();
  b = new Stars();
}
void draw() {
  
  a.moveStar();
  a.checkStarEdges();
  a.star(x, y);
  
}

void mousePressed(){
  background(random(0,255));
}

void keyPressed(){
fill(random(0,255),random(0,255),255,random(0,255));
}
