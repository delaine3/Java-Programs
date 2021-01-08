//Roads
PImage lRroad;
PImage vRoad;

class Roads {

  void displayRoad() {

    lRroad = loadImage("road7.png");
    vRoad = loadImage("road1.png");  

    //road at the very bottom of screen
    for (int i = 0; i<15; i++) {
      image(lRroad, 0 + i*100, 680, width/10, height/10);
    }


    //road just above school
    for (int i = 0; i<5; i++) {
      image(lRroad, 0 + i*32, 320, width/10, height/10);
    }
    for (int i = 0; i<11; i++) {
      image(lRroad, 860 + i*32, 340, width/10, height/10);
    }
    //road on the right side of school
    for (int i = 0; i<11.5; i++) {
      image(vRoad, 270, 0 + i*49, width/13, height/5);
    }

    for (int i = 0; i<11; i++) {
      image(lRroad, 860 + i*32, 340, width/10, height/10);
    }
    //road on the right side of school
    for (int i = 0; i<11.5; i++) {
      image(vRoad, 270, 0 + i*49, width/13, height/5);
    }
    
    //road on the right side of houses
    for (int i = 0; i<20; i++) {
      image(vRoad, 785, 0 + i*28.5, width/15, height/5);
    }
    
        //road just above houses
    for (int i = 0; i<6; i++) {
      image(lRroad, 385 + i*50, 400, width/10, height/10);
    }
  }
}
