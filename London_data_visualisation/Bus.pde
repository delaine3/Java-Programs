float busN = 1300;
PImage bus;

class Bus {

  void moveBus() {

    bus = loadImage("bus.png");
    //bus
    image(bus, busN, 650, width/12, height/12);
    busN = busN -10;
    if (busN <0) {
      busN = 1300;
    }
  }
}
