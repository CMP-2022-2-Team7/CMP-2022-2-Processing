class Obstacle{
  
  float x,y = 0;
  float speed;
  
  PImage image;
  
  Obstacle(String i){
    x = int(random(100,600));
    y = -300;

    if(i == "professor"){
      image = loadImage("man_professor.png");
      speed = 2;
    }else if(i == "student1"){
      image = loadImage("girl.png");
      speed = 3;
    }else if(i == "student2"){
      image = loadImage("boy.png");
      speed = 4.2;
    }else if(i == "student3"){
      image = loadImage("boy.png");
      speed = 4.4;
    }else if(i == "bicycle"){
      image = loadImage("bicycle.png");
      speed = 5;
    }else if(i == "dog"){
      image = loadImage("brown_dog.png");
      speed = 3.4;
    }else if(i == "ball"){
      image = loadImage("ball.png");
      speed = 3.8;
    }
    
    
  }
  
  //Draw an obstacle movement
  void moveObstacle(){
    image(image,x,y);
    if(y <= 500){
      y += speed;
    }else{
      x = int(random(100,600));
      y = -300;
    }
  }
}
