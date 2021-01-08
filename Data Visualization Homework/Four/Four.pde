//Moving objects, speed, bouncing against width

float circle1;
float circle2;
float xspeed = 2;
float yspeed = 5;

void setup() {
  size(800, 800);
  circle1 = 0;
  circle2 = 0;
}

void draw() {
  background(0);
  
  //Circle 1
  fill(255);
  stroke(255);
  ellipse(circle1, width/2, 30, 30);

  //circle 2
  fill(255);
  stroke(255);
  ellipse(height/2, circle2, 30, 30);
  
  circle1 = circle1 + xspeed;
  circle2 = circle2 + yspeed;

  if (circle1 > width) {
    xspeed = -4;
    println("TURN AROUND!!!");
  }
  if (circle1 < 0) {
    xspeed = 7;
  }
  //|| = "or"
  if(circle2 > height || circle2 < 0) {
    //Turn around 
    yspeed = yspeed * -1.5;
}
}
