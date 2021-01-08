float balloonX = 900;
float balloonY = 500;

class Balloon {

  void moveBalloon() {

    PImage balloon;

    balloon = loadImage("balloon.png");

    //balloon
    balloonX = balloonX -3;
    balloonY = balloonY -3;
    image(balloon, balloonX, balloonY, width/10, height/9);

    if (balloonX < 400 || balloonX > 900) {
      balloonX = 600 - random(0-100);
    }

    if (balloonY > height || balloonY < 0) {
      balloonY = 350;
    }
  }
}
