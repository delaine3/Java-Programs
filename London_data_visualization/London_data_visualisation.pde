//objects from classes
Car car1;
Bus bus1;
Balloon balloon1;
Cloud cloud1;
Roads road1;

//ints
float bike1;
float rect1 =440;
int screen = 1;

//images
PImage grass;
PImage houses;
PImage park;
PImage school;
PImage greenery;
PImage blue;
PImage shops;
PImage london;
PImage bike;

void setup() {
  size(1270, 750);
  screen = 1;
  grass = loadImage("grass.png");
  houses = loadImage("houses.png");
  park = loadImage("park.jpg");
  school = loadImage("school.jpg");
  greenery = loadImage("green.png");
  blue= loadImage("blue.jpg");
  shops= loadImage("shops.png");
  london= loadImage("london.png");
  bike= loadImage("bike.png");

  bus1 = new Bus();
  car1 = new Car();
  balloon1 = new Balloon();
  cloud1 = new Cloud();
  road1 = new Roads();
} // END SETUP

void draw() {

  image(blue, 0, 0);
  blue.resize(1270, 750);

  if (screen==1) {    
    //LONDON  
    fill(255, 255, 255, 0.2);
    PFont f = createFont("helvetica", 64);
    fill(0);

    textFont(f);

    textAlign(CENTER);
    textSize(40);
    String london = "London";
    text(london, 200, 50, 900, 300);

    textAlign(LEFT);
    textSize(25);
    String welcome = "Welcome! This is an interactive Data Visualisation about how the residents of London feel about their city and local neighborhoods.";
    text(welcome, 200, 150, 900, 300);

    textSize(25);
    String london1= "For the most part, Londoners like London. 82% of residents report that they are satisfied with the city and 76% are satisfied with their local area.";
    text(london1, 200, 250, 850, 200);

    textAlign(LEFT);
    textSize(25);
    String dataviz = "*To view the data visualisation press any key.\n*Once you arrive at the visualisation, view the information by hovering over the different areas.\n*If you would like to see where all the different information is located, click on the mouse. Red dots will appear, hover over these dots to view the information.";
    text(dataviz, 200, 350, 900, 300);
    if (keyPressed==true) {
      clear();
      screen = 2;
    }
  }

  if (screen==2) {
    image(blue, 0, 0);
    blue.resize(1270, 750);

    //park
    image(park, 390, 190, width/3, height/3.5);

    //houses
    for (int i = 0; i<2; i++) {
      image(houses, 400, 490 + i *100, width/3.4, height/8);
    }

    //school
    image(school, 0, 380, width/4, height/2.5);

    //river
    image(greenery, 0, 5, width/4, height/4);

    //London Bridge
    image(london, 870, 90, width/3, height/3);

    //shops
    image(shops, 870, 500, width/3, height/4);
    road1.displayRoad();
    car1.moveCars();

    bus1.moveBus();
    //grass
    for (int i = 0; i<3; i++) {
      image(grass, 0, 115 + i*39, width/4.2, height/6);
    }
    //bike  
    image(bike, 800, bike1, width/25, height/15);
    bike1 = bike1 -5;
    if (bike1 <0) {
      bike1 = 600;
    }
    balloon1.moveBalloon();

    if (mouseX > 355 && mouseX <800 && mouseY > 0 && mouseY < 200) {
      String air= "34% of Londoners agree that the air \n feels clean";
      textSize(20);
      fill(0);
      text(air, 425, 130);
    }

    if (mouseX > 355 && mouseX <800 && mouseY > 200 && mouseY < 400) {
      String air= "58% of Londoners agree \n that their local sport \n and leisure facilities are good.";
      textSize(20);
      fill(0);
      text(air, 425, 100);
    } 

    if (mouseX > 900 && mouseX <1100 && mouseY > 575 && mouseY < 675) {
      String street= "46% of Londoners \n agree that their local high street \n is improving";
      textSize(20);
      fill(255, 0, 255);
      text(street, 940, 470);
    }

    if (mouseX > 900 && mouseX <1100 && mouseY > 450 && mouseY < 575) {
      String street= "67% of Londoners \n agree that their local high street \n is a safe space to spend time";
      textSize(20);
      fill(0);
      text(street, 900, 450);
    }

    if (mouseX > 1100 && mouseX <1500 && mouseY > 450 && mouseY < 575) {
      String street= "68% of Londoners think that their local high street has a good range of shops,restaurants, cafes etc.";
      textSize(20);
      fill(155, 69, 250);
      text(street, 940, 430, 300, 200);
    }

    if (mouseX > 0 && mouseX <400 && mouseY > 0 && mouseY < 100) {
      String parks= "83% of Londoners \n agree that their local parks \n and green spaces are good";
      textSize(20);
      fill(255);
      text(parks, 50, 230);
    }

    if (mouseX > 0 && mouseX <400 && mouseY > 150 && mouseY < 250) {
      String parks= "75% of Londoners \n think that their local area \n is a pleasant place to live";
      textSize(20);
      fill(255, 255, 0);
      text(parks, 50, 200);
    }

    if (mouseX > 0 && mouseX <250 && mouseY > 440 && mouseY < 600) {
      fill(#DBF3FA);
      rect(10, 480, width/5.5, height/6);
      String schools= "62% of parents and 44% \n of Londoners agree \n that their local area \n has good schools.";
      textSize(20);
      fill(0);
      text(schools, 10, 500);
    }

    if (mouseX > 400 && mouseX <550 && mouseY > 470 && mouseY < 590) {
      fill(#DBF3FA);
      rect(390, 500, width/4.5, height/8);
      String family= "56% of people agree \n that they would be happy to \n raise a family in their area.";
      textSize(20);
      fill(0);
      text(family, 400, 520);
    }

    if (mouseX > 550 && mouseX <800 && mouseY > 470 && mouseY < 590) {
      fill(#DBE3FA);
      rect(420, 500, width/3.5, height/8);
      String family= "49% of Londoners feel that their \n local area is a place where people \n are willing to help their neighbors.";
      textSize(20);
      fill(0);
      text(family, 440, 520);
    }

    if (mouseX > 790 && mouseX <850 && mouseY > 280 && mouseY < 350) {
      fill(#DBE3FA);
      rect(790, 280, width/5.5, height/6);
      String family= "31% of Londoners agree that it is safe to cyle in their local area.";
      textSize(20);
      fill(0);
      text(family, 810, 300, 200, 300);
    }

    if (mouseX > 0 && mouseX <300 && mouseY > 320 && mouseY < 390) {
      fill(#DBE3FA);
      rect(90, 200, width/6, height/5);
      String family= "30% of Londoners agree that they are disturbed by noise from transport.";
      textSize(20);
      fill(0);
      text(family, 100, 220, 200, 300);
    }

    if (mouseX > 0 && mouseX <370 && mouseY > 675) {
      fill(#C0E7FA);
      rect(250, 580, width/5.5, height/6);
      String family= "81% of Londoners agree that their local transport is reliable.";
      textSize(20);
      fill(0);
      text(family, 260, 600, 200, 300);
    }
    if (mouseX > 880 && mouseX <1500 && mouseY > 0 && mouseY < 175) {
      //fill(#DBF3FA);
      //rect(10, 480, width/6, height/5);
      String schools= "42% of Londoners agree \n that there is a range of \n arts and community activities.";
      textSize(20);
      fill(0);
      text(schools, 950, 30);
    }

    if (mouseX > 880 && mouseX <1500 && mouseY > 175 && mouseY < 350) {
      //fill(#DBF3FA);
      //rect(10, 480, width/6, height/5);
      String schools= "45% of Londoners agree that their local environment is clean and litter free.";
      textSize(25);
      fill(0);
      text(schools, 990, 112, 200, 300);
    }

    cloud1.displayClouds();
  } // END DRAW
}

void mouseClicked() {
  fill(255, 0, 0);
  //red circles
  
  //1
  ellipse(575,100,20, 20);

  //2
  ellipse(575,300,20, 20);

  //3
  ellipse(1000,625,20, 20);

  //4
  ellipse(1000,510,20, 20);

  //5
  ellipse(1200,510,20, 20);

  //6
  ellipse(200,50,20, 20);

  //7
  ellipse(200,200,20, 20);

  //8
  ellipse(125,520,20, 20);

  //9
  ellipse(475,530,20, 20);

  //10
  ellipse(675,530,20, 20);
  
  //11
  ellipse(820, 320, 20, 20);
  
  //12
  ellipse(150, 350, 20, 20);
  
  //13
  ellipse(355, 680, 20, 20);
  
  //14
  ellipse(1100, 212, 20, 20);
  
  //15
  ellipse(950, 30, 20, 20);
}
//Hot SPots
//Instructions page
