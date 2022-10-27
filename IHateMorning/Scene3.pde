class Scene3{
  Object obj;
  Obstacle obs1Professor;
  Obstacle obs2Student1;
  Obstacle obs2Student2;
  Obstacle obs2Student3;
  Obstacle obs3Bicycle;
  Obstacle obs4Dog;
  Obstacle obs5Ball;
  
  
  int timeLimit = 10; //시간 범위
  int ms = 1800; //현재 시간
  
  
  ArrayList<Life> lifeSystem; //생명시스템 배열
  ArrayList<Obstacle> obsArray; //충돌체 배열
  
  //물체 충돌
  boolean hitProfessor = false;
  boolean hitStudent1 = false;
  boolean hitStudent2 = false;
  boolean hitStudent3 = false;
  boolean hitBicycle = false;
  boolean hitDog = false;
  boolean hitBall = false;
  
  //라이프 존재 여부
  boolean lifeis = false;
  
  PImage background;
  
  Scene3(){
      
    //객체 생성
    obj = new Object();
    obs1Professor = new Obstacle("professor");
    obs2Student1 = new Obstacle("student1");
    obs2Student2 = new Obstacle("student2");
    obs2Student3 = new Obstacle("student3");
    obs3Bicycle = new Obstacle("bicycle");
    obs4Dog = new Obstacle("dog");
    obs5Ball = new Obstacle("ball");
    
      
    lifeSystem = new ArrayList<Life>();
    lifeSystem.add(new Life(20));
    lifeSystem.add(new Life(45));
    lifeSystem.add(new Life(70));
      
    background = loadImage("background_road.png");
  }
  
  void drawScene3(){
   
    fill(0); //글씨 색
    
   //시간이 있을 때
    if(ms > 0){
    
    //시간 출력
      image(background,0,0,width,height);
      textSize(35);
      text("Time Remaining to Destination : ",373,40);
      fill(255,0,0);
      text(ms/60, 570,41);
      
      
      //충돌 체크
      CheckCollision();
      
      //충돌시 라이프 변화
      collision();
      
      //라이프 구현
      for(Life life : lifeSystem){
      life.drawLife();
      }
      
      ms --;
      
    }else{ //시간이 끝났을 때
       move3 = false;
       moveending2 = true;
    }
  }
  
  //충돌 체크
  void CheckCollision(){
  if(obs1Professor.y > obj.y - 70 && obs1Professor.y < obj.y + 70){
    if(obs1Professor.x > obj.x - 30 && obs1Professor.x < obj.x + 70){
      hitProfessor = true;
      obs1Professor.y = -100;
      obs1Professor.x = random(100,600);
      println("hit_pro");
    }
  }
  
  if(obs2Student1.y > obj.y - 70 && obs2Student1.y < obj.y + 70){
    if(obs2Student1.x > obj.x - 30 && obs2Student1.x < obj.x + 70){
      hitStudent1 = true;
      obs2Student1.y = -100;
      obs2Student1.x = random(100,600);
      println("hit_stu1");
    }
  }
  
  if(obs2Student2.y > obj.y - 100 && obs2Student2.y < obj.y + 50){
    if(obs2Student2.x > obj.x - 70 && obs2Student2.x < obj.x + 30){
      hitStudent2 = true;
      obs2Student2.y = -100;
      obs2Student2.x = random(100,600);
      println("hit_stu2");
    }
  }
  
  if(obs2Student3.y > obj.y - 100 && obs2Student3.y < obj.y + 50){
    if(obs2Student3.x > obj.x - 70 && obs2Student3.x < obj.x + 30){
      hitStudent3 = true;
      obs2Student3.y = -100;
      obs2Student3.x = random(100,600);
      println("hit_stu3");
    }
  }
  
  if(obs3Bicycle.y > obj.y - 100 && obs3Bicycle.y < obj.y + 50){
    if(obs3Bicycle.x > obj.x -40 && obs3Bicycle.x < obj.x + 60){
      hitBicycle = true;
      obs3Bicycle.y = -100;
      obs3Bicycle.x = random(100,600);
      println("hit_bi");
    }
  }
  
  if(obs4Dog.y > obj.y - 50 && obs4Dog.y < obj.y + 50){
    if(obs4Dog.x > obj.x - 45 && obs4Dog.x < obj.x + 70){
      hitDog = true;
      obs4Dog.y = -100;
      obs4Dog.x = random(100,600);
      println("hit_dog");
    }
  }
  
  if(obs5Ball.y > obj.y - 50 && obs5Ball.y < obj.y + 50){
    if(obs5Ball.x > obj.x - 45 && obs5Ball.x < obj.x + 70){
      hitBall = true;
      obs5Ball.y = -100;
      obs5Ball.x = random(100,600);
      println("hit_ball");
    }
  }
}
  
  //충돌시 라이프 변화
  void collision(){
  if(lifeSystem.size() > 0){
      
      obs1Professor.moveObstacle();
      obs2Student1.moveObstacle();
      obs2Student2.moveObstacle();
      obs2Student3.moveObstacle();
      obs3Bicycle.moveObstacle();
      obs4Dog.moveObstacle();
      obs5Ball.moveObstacle();
      obj.drawObject();
      
      
      //교수님이랑 충돌할 때
      if(hitProfessor == true){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitProfessor = false;
          obj.drawEffect();
          
        } else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          hitProfessor = false;
          obj.drawEffect();

        } else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          hitProfessor = false;
          obj.drawEffect();
          
        }
        //학생1이랑 충돌할 때
      }else if(hitStudent1 == true && lifeSystem.size() > 0){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitStudent1 = false;
          obj.drawEffect();

        }else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          hitStudent1 = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          hitStudent1 = false;
          obj.drawEffect();
          
        }
        //학생2랑 충돌할 때
      }else if(hitStudent2 == true && lifeSystem.size() > 0){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitStudent2 = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          hitStudent2 = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          hitStudent2 = false;
          obj.drawEffect();
          
        }
        //학생3이랑 충돌할 때
      }else if(hitStudent3 == true && lifeSystem.size() > 0){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitStudent3 = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          hitStudent3 = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          hitStudent3 = false;
          obj.drawEffect();
          
        }
        //자전거랑 충돌할 때
      }else if(hitBicycle == true && lifeSystem.size() > 0){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitBicycle = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          lifeSystem.remove(0);
          hitBicycle = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          lifeSystem.remove(1);
          hitBicycle = false;
          obj.drawEffect();
          
        }
        //강아지랑 충돌할 때
      }else if(hitDog == true && lifeSystem.size() > 0){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitDog = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          hitDog = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          hitDog = false;
          obj.drawEffect();
          
        }
        //공이랑 충돌할 때
      }else if(hitBall == true && lifeSystem.size() > 0){
        if(lifeSystem.size() == 1){
          lifeSystem.remove(0);
          hitBall = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 2){
          lifeSystem.remove(1);
          hitBall = false;
          obj.drawEffect();
          
        }else if(lifeSystem.size() == 3){
          lifeSystem.remove(2);
          hitBall = false;
          obj.drawEffect();
          
        }
      }
    }else{
      move3 = false;
      endingscene.endText = "GAME OVER";
      moveending = true;
      }
  }
  
  
}
