float x = 0;
float y = 0;
float xspeed = 7.8;
float yspeed = 5.9;

class Flower{
  
  //Reusability
void flower1(float x, float y) {
  //hardcoding a series of vertices
  //I CREATED THIS CODE MYSELF!!!!!!!!!!!!
  beginShape();
  fill(random(0,100),random(100,255),random(150,255));
  noStroke();
   if (x > width/2|| x < 0) {
    //change color
    fill(random(0,255),255,random(0,255));
  }
  ellipse(x, y ,100, 100);
  ellipse(x+90, y+10,100, 100 );
 if (x > width/2|| x < 0) {
    //change color
    fill(255,random(0,255),random(0,255));
  }
  ellipse(x +40, y+150,100,100);
   if (x > height/3|| x < 0) {
    //change color
  fill(random(0,255),random(0,255),255);
  }
  ellipse(x +120, y +100,100,100);
  ellipse(x-30 , y+90,100,100);
  fill(255,random(0,255),127);
  ellipse(x + 40, y +75,100,100);
  endShape(CLOSE);
}

void flower2(float x, float y) {
  float xspeed = 2.8;
float yspeed = 1.9;
  //hardcoding a series of vertices
  //I CREATED THIS CODE MYSELF!!!!!!!!!!!!
  background(255,0,255);
  beginShape();
   if (x > height/4|| x < 0) {
    //change color
    fill(0,255,random(0,255));
  }
  ellipse(x, y ,170, 130);
  ellipse(x+90, y+10,150, 170 );
  ellipse(x +40, y+150,150,150);
  ellipse(x +120, y +100,180,120);
  ellipse(x-30 , y+90,110,150);
  fill(255,random(0,255),0);
  ellipse(x + 40, y +75,100,100);
  endShape(CLOSE);
}

void displayFlower() {
  fill(255);
  stroke(0);
}



void moveFlower() {
  x = x + xspeed;
  y = y + yspeed;
}



void checkFlowerEdges(){
  if (x > width|| x < 0) {
    //change direction
    xspeed = xspeed * -1;
  }
  
  
  
  if (y > width|| y < 0) {
    //change direction
    yspeed = yspeed * -1;
  }
}
  
}
