class Obstacle{
  
  //int direction;
  float x,y = 0;
  PImage professor;
  PImage student;
  PImage bicycle;
  PImage dog;
  
  Obstacle(){
    x = int(random(50,750));
    y = 100;
    professor = loadImage("professor.png");
    student = loadImage("student.png");
    bicycle = loadImage("bicycle.png");
    dog = loadImage("dog.png");
    //direction = int(random(x,y)*3);
    
  }
  
  void setInterval(){
    
  }
  
  void obs_professor(){
    image(professor,x,y);
    if(y <= 500){
      y += 2;
    }else{
      x = int(random(50,750));
      y = 0;
    }
    //if(dist(obj.x,obj.y,x,y) < 2){
    //  hit = true;
    //}
  }
  
  void obs_student_1(){
    image(student,x,y);
    if(y <= 500){
      y += 3;
    }else{
      x = int(random(50,750));
      y = 0;
    }
    //if(dist(obj.x,obj.y,x,y) < 2){
    //  hit = true;
    //}
  }
  
  void obs_student_2(){
    image(student,x,y);
    if(y <= 500){
      y += 4;
    }else{
      x = int(random(50,750));
      y = 0;
    }
    //if(dist(obj.x,obj.y,x,y) < 2){
    //  hit = true;
    //}
  }
  
  void obs_bicycle(){
    image(bicycle,x,y);
    if(y <= 500){
      y += 5;
    }else{
      x = int(random(50,750));
      y = 0;
    }
    //if(dist(obj.x,obj.y,x,y) < 2){
    //  hit = true;
    //}
  }
  
  void obs_dog(){
    image(dog,x,y);
    if(y <= 500){
      y += 3.5;
    }else{
      x = int(random(50,750));
      y = 0;
    }
    //if(dist(obj.x,obj.y,x,y) < 2){
    //  hit = true;
    //}
  }
  
}
