//objects from classes
Car car1;
Bus bus1;
Balloon balloon1;
Cloud cloud1;
Roads road1;

//images
PImage grass;
PImage houses;
PImage park;
PImage school;
PImage greenery;
PImage blue;
PImage shops;

void setup() {
  size(1500, 750);

  grass = loadImage("grass.png");
  houses = loadImage("houses.png");
  park = loadImage("park.jpg");
  school = loadImage("school.jpg");
  greenery = loadImage("green.png");
  blue= loadImage("blue.jpg");
  shops= loadImage("shops.png");

  bus1 = new Bus();
  car1 = new Car();
  balloon1 = new Balloon();
  cloud1 = new Cloud();
  road1 = new Roads();
}

void draw() {
  //background
  image(blue, 0, 0);
  blue.resize(1500, 1500);

  if (mouseX > 355 && mouseX <800 && mouseY > 0 && mouseY < 200) {
    String air= "34% of Londoners agree that the air \n feels clean";
    textSize(20);
    fill(0);
    text(air, 395, 100);
  }

  if (mouseX > 355 && mouseX <800 && mouseY > 200 && mouseY < 500) {
    String air= "58% of Londoners agree \n that their local sport \n and leisure facilities are good.";
    textSize(20);
    fill(0);
    text(air, 395, 100);
  } 

  //park
  image(park, 380, 190, width/3.7, height/3.5);

  //houses
  for (int i = 0; i<2; i++) {
    image(houses, 400, 490 + i *100, width/4, height/8);
  }

  //school
  image(school, -40, 380, width/4, height/2.5);

  //river
  image(greenery, 0, 5, width/5.5, height/4);

  //shops
  image(shops, 870, 500, width/3.6, height/4);
  road1.displayRoad();
  bus1.moveBus();
  //grass
  for (int i = 0; i<3; i++) {
    image(grass, 0, 115 + i*39, width/5.5, height/6);
  }

  
  if (mouseX > 0 && mouseX <400 && mouseY > 0 && mouseY < 300) {
    String parks= "83% of Londoners \n agree that their local parks \n and green spaces are good";
    textSize(20);
    fill(255);
    text(parks, 0, 200);
  }

  if (mouseX > 0 && mouseX <300 && mouseY > 400 && mouseY < 600) {
    fill(255);
    image(blue, 10, 480, width/6, height/5);
    String schools= "62% of parents and 44% \n of Londoners agree \n that their local area \n has good schools.";
    textSize(20);
    fill(0);
    text(schools, 10, 500);
  }
    balloon1.moveBalloon();

  cloud1.displayClouds();
  car1.moveCars();

  /*
x = 40;
   while (x < width) {
   line(x, 0, x, height);
   x = x + 40;
   }
   y = 40;
   while (y < height) {
   line(0, y, width, y);
   y = y + 40;
   }
   }
   */
}
