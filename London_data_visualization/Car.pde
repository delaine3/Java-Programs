float carN = 350;
float carN2 = 450;
float carN3 = 799;
float carSwitch;
float carStart = 277;

//images
PImage car;
PImage car4;
PImage car6;

class Car {

  void moveCars() {
    car = loadImage("car.png");
    car4 = loadImage("car4.png");
    car6 = loadImage("car6.png");

    image(car6, carN, 400, width/20, height/20);
    carN = carN +10;
    if (carN <0 || carN>700) {
      carN = 350;
    }
    image(car4, 307, carN3, width/28, height/14);
    carN3 = carN3 -10;
    if (carN3 <0) {
      carN3 = 400;
    }

    image(car, 307, carN2, width/28, height/14);
    carN2 = carN2 -10;
    if (carN2 <0) {
      carN2 = 900;
    }
  }
}
