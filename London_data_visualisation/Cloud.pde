PImage cloud;
PImage cloud2;

class Cloud{
  
  void displayClouds(){
    cloud = loadImage("cloud.png");
  cloud2 = loadImage("cloud2.png");
  
  //cloud over park
  image(cloud, 400, 15, width/4.5, height/6);
  
   //cloud over hospital
  image(cloud2, 900, 15, width/4.5, height/6);
    
  }
  
}
