//using Boolean Expressions -> an expression that only validates to either true or false
//Conditional statements
/*relational opperators:
 >
 <
 >=
 <=
 ==
 !=
 */
float circle1 = 0;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {

  if (mouseX < 500) {
    fill(#F45F87);
    rect(300, 100, 50, 50);
  } else if (mouseX < 600) {
    fill(#F03A3A);
    rect(300, 340, 80, 50);
  } else if (mouseX > 700) {
    fill(#AEB42C);
    rect(500, 40, 50, 500);
  } 
  if (mouseX >= 500) {
    fill(255);
    ellipse(circle1, 350, 25, 25);
    circle1 = circle1 + 1;
  }
}
