/*This program taught me how to use 2d shapes, mouseX and mouseY, the colors and how 
to declare,innitialise and use use variables
*/
//to declare a variable, you need to give it a data type and a name.
// e.g int, float

//Declare variable
float circle1;

void setup(){
  size(1000,1000);
  
  //assignment opperation
  //Innitialise variable
  circle1 = 500;
}

void draw(){
  background(8);
  
  fill(#FFFF9E);
  ellipse(mouseX,180,23,24);
  
  fill(#53F29E);
  rect(359,mouseY,30,30);
  
  fill(#FF8103);
  triangle(780, mouseY, 780, 500, 700, 300);
  
  //Use Variable
  fill(#FF035F);
  arc(500, circle1, 80, mouseX, PI+HALF_PI, PI+TWO_PI);
  
  fill(#E523E3);
  quad(mouseX, mouseX, 303, 504, 173, 400, 328, 553);

  
  

}
