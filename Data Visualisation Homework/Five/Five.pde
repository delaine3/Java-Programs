//While loops, random and grids

//WHile this is true, execute this code

float x = 0;
float y = 0;
float z = 0;
float spacing = 50;

void setup() {
  size(1000, 700);
}

void draw() {
  background(0);
  spacing = spacing + random(-3,3);
  
  x = 0;
  //draw circles until x is greater than the width
  while (x < width) {
    x = x + 1;
    fill(101);
    stroke(255, 0, 255);
    ellipse(x, height/2, 45, 45);
  }
  x = 0;
  //draw circles until x is nolonger less than the height
  while (x < height) {
    x = x + 10;
    fill(101);
    strokeWeight(1);
    stroke(255, 255, 0);
    ellipse(width/2, x, 45, 45);
  }

  x = 0;
  //draw circles while x is less than the height
  //if mouseX is less than 1 the variable x = 1 
  //(so that we dont get stuck in an infinite loop)
  //otherwise x = mouseX so draw a circle
  while (x < height) {
    if (mouseX < 1) {
      x = x + 1;
    } else {
      x = x + mouseX;
    }
    fill(101);
    strokeWeight(1);
    stroke(0, 255, 255);
    ellipse(width/3, x, 45, 45);
  }
  z = 0;
  while (z < height) {
    if (mouseX < 1) {
      z = z + 1;
    } else {
      z = z + mouseX;
    }
    fill(101);
    strokeWeight(3);
    stroke(255, 0, 0);
    ellipse(mouseY, z, 45, 45);
  }
  y = 50;
  stroke(0, 0, 255);
  strokeWeight(3);

  while (y < width) {
    line(y, 0, y, height);
    y = y + spacing;
  }

  y = 50;
  stroke(0, 255, 0);
  strokeWeight(1);
  while (y < height) {
    line(0, y, width, y);
    y = y + spacing;
  }
}
