//For loops, nested loops, variable scope

//innitialisation condition/ global variables
//any variable declareed in setup is a local variable.
//it only exists where it has been declared


void setup() {
  size(800, 800);
}
void draw() {
  background(255);
  strokeWeight(4);

  //This is the only place where I use these variaables
  //so I am making them local
  int x = 0;
  int y = 0;

  //I can use a while loop for this
  
  /*NESTED FOR LOOP
  I want to say: 
  for every row (every y value(
    for every column
    row 0 draw all the rectangle
    row 1 draw all the rectangle accross
      draw a rectange
      */
      
  for (x = 0; x <width; x = x + 40) {
      for (y = 0; y < height; y = y + 40) {
        stroke(#4AC8CB);
        fill(random(0,255),255,random(0,255));
          quad(x, y, 40, 40,mouseX,mouseY,y,x);
          
  }
  //Like this 
  /*But that's not what I want right now
   y = 0;
   while (y < width) {
   stroke(#4AC8CB);
   line(0, y, width, y);
   //incrementation opperation
   y = y + 80;
   }
   */
  //Anyway, this is about for loops
  
  }
}
