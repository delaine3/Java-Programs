float carN = 400;
float carN2 = 500;
float carN3 = 600;
float carSwitch;
float carStart = 277;

//images
PImage car;
PImage car2;
PImage car3;
PImage car4;
PImage car5;
PImage car6;
PImage car7;

class Car {

  void moveCars() {
    car = loadImage("car.png");
    car2 = loadImage("car2.png");
    car3 = loadImage("car3.png");
    car4 = loadImage("car4.png");
    car5 = loadImage("car5.png");
    car6 = loadImage("car6.png");
    car7 = loadImage("car7.png");

    image(car4, carStart, carN, width/28, height/14);
    carN = carN -7;
    if (carN <0) {
      carN = 750;
      carStart = 790;
    }
    image(car3, carStart, carN3, width/28, height/14);
    carN3 = carN3 -7;
    if (carN3 <0) {
      carN3 = 690 ;
      carStart = 788;

    }

    image(car, 277, carN2, width/28, height/14);
    carN2 = carN2 -7;
    if (carN2 <0) {
      carN2 = 390;
    }
  }
}
