//CLASSES
Flower a;
Flower b;

void setup() {
  size(800, 800);
  a = new Flower();
  b = new Flower();
}

//void is a function's return type. 
void draw() {  
  a.displayFlower();
  a.moveFlower();
  a.checkFlowerEdges();
  a.flower1(x, y);
  
  //you have to choose between these two functions, they are mutually exclusive
  
  //b.displayFlower();
  //b.moveFlower();
  //b.checkFlowerEdges();
  //b.flower2(x, y);
  
}
