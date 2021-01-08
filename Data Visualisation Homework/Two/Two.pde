//Here I learnt how to use println, Random, Global variables and movement

//GLOBAL VARIABLES
float rectangle1;
float rectangle2;
float circle1;
float circle2;
float triangle1;

void setup(){
  size(1000,600);
  
  
  circle1 = (height/2);
  circle2 = (width/1);
  triangle1 = 50;
  background(#A5E87A);

}

void draw(){
  
  //Drawing stuff
  
  //Circle
  fill(#99D7D8);
  ellipse(circle2,circle1,43,44);
  
  //rectangle/square
  fill(#FAEE0A);
  noStroke();
  rect(rectangle1,rectangle2,100,100);
  
  //triangle
  fill(#2E8B40);
  triangle(triangle1, 751, 58, 20, 86, 75);

  //Logic
  rectangle1 = random(width);
  rectangle2 = random(height);
  println(rectangle1);
  
  circle1 = circle1 - random(-5,5);
  circle2 = circle2 - 5;
  
  triangle1 = triangle1 + 5;
  
  println("Traingle1:" + triangle1);

}
