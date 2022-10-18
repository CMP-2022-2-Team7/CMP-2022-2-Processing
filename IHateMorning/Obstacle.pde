class Obstacle{
  
  //int direction;
  float x,y = 0;
  PImage image;
  
  Obstacle(String i){
    x = int(random(50,750));
    y = 100;

    if(i == "professor"){
      image = loadImage("professor.png");
    }else if(i == "student"){
      image = loadImage("student.png");
    }else if(i == "bicycle"){
      image = loadImage("bicycle.png");
    }else if(i == "dog"){
      image = loadImage("dog.png");
    }
    
    
  }
  
  //충돌물 움직임
  void moveObstacle(float speed){
    image(image,x,y);
    if(y <= 500){
      y += speed;
    }else{
      x = int(random(50,750));
      y = 0;
    }
  }
}
