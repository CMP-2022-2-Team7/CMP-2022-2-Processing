
class Scene3{
  Object obj;
  Obstacle obs1Professor;
  Obstacle obs2Student1;
  Obstacle obs2Student2;
  Obstacle obs3Bicycle;
  Obstacle obs4Dog;
  
  
  int timeLimit = 10; //시간 범위
  int ms = 180; //현재 시간
  
  
  ArrayList<Life> lifeSystem; //생명시스템 배열
  ArrayList<Obstacle> obsArray; //충돌체 배열
  
  //물체 충돌
  boolean hitProfessor = false;
  boolean hitStudent1 = false;
  boolean hitStudent2 = false;
  boolean hitBicycle = false;
  boolean hitDog = false;
  boolean lifeis = false;
  
  PImage background;
  
  Scene3(){
      
    //객체 생성
    obj = new Object();
    obs1Professor = new Obstacle("professor");
    obs2Student1 = new Obstacle("student");
    obs2Student2 = new Obstacle("student");
    obs3Bicycle = new Obstacle("bicycle");
    obs4Dog = new Obstacle("dog");
    
      
    lifeSystem = new ArrayList<Life>();
    lifeSystem.add(new Life(20));
    lifeSystem.add(new Life(45));
    lifeSystem.add(new Life(70));
      
    background = loadImage("background.jpg");
  }
  
  void drawScene3(){
   
    fill(0); //글씨 색
    
   //시간이 있을 때
    if(ms > 0){
    
    //시간 출력
      image(background,0,0,width,height);
      textSize(20);
      text("Time Remaining to Destination : ",385,30);
      fill(255,0,0);
      text(ms/60, 550,31);
      
      
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
      /* background(0); //배경 변환
       fill(255); //글씨 색
       textSize(50); //글씨 크기
       text("Arrive!",370,height/2); //도착했다는 문구 출력*/
       move3 = false;
       moveending = true;
    }
  }
  
  //충돌 체크
  void CheckCollision(){
  if(obs1Professor.y > obj.y - 10){
    if(obs1Professor.x > obj.x - 30 && obs1Professor.x < obj.x + 30){
      hitProfessor = true;
      obs1Professor.y = 0;
      obs1Professor.x = random(50,750);
      println("hit_pro");
    }
  }
  
  if(obs2Student1.y > obj.y - 10){
    if(obs2Student1.x > obj.x - 30 && obs2Student1.x < obj.x + 30){
      hitStudent1 = true;
      obs2Student1.y = 0;
      obs2Student1.x = random(50,750);
      println("hit_stu1");
    }
  }
  
  if(obs2Student2.y > obj.y - 10){
    if(obs2Student2.x > obj.x - 30 && obs2Student2.x < obj.x + 30){
      hitStudent2 = true;
      obs2Student2.y = 0;
      obs2Student2.x = random(50,750);
      println("hit_stu2");
    }
  }
  
  if(obs3Bicycle.y > obj.y - 50){
    if(obs3Bicycle.x > obj.x -25 && obs3Bicycle.x < obj.x + 30){
      hitBicycle = true;
      obs3Bicycle.y = 0;
      obs3Bicycle.x = random(50,750);
      println("hit_bi");
    }
  }
  
  if(obs4Dog.y > obj.y - 10){
    if(obs4Dog.x > obj.x - 25 && obs4Dog.x < obj.x + 25){
      hitDog = true;
      obs4Dog.y = 0;
      obs4Dog.x = random(50,750);
      println("hit_dog");
    }
  }
}
  
  //충돌시 라이프 변화
  void collision(){
  if(lifeSystem.size() > 0){
      
      obs1Professor.moveObstacle(2);
      obs2Student1.moveObstacle(3);
      obs2Student2.moveObstacle(4);
      obs3Bicycle.moveObstacle(5);
      obs4Dog.moveObstacle(3.5);
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
        obj.drawEffect();
      }
    }else{
        background(0); //게임 오버 화면 변환
        fill(255);
        text("Game Over",400,height/2);
        delay(100); //딜레이
    }
  } 
}
