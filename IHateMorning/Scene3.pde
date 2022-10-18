
class Scene3{

  object obj;
  Obstacle Obs1_professor;
  Obstacle Obs2_1_student;
  Obstacle Obs2_2_student;
  Obstacle Obs3_bicycle;
  Obstacle Obs4_dog;
  
  
  int time_limit = 30; //시간 범위
  int countDown; //현재 시간
  
  
  ArrayList<Life> LifeSystem; //생명시스템 배열
  ArrayList<Obstacle> obsArray; //충돌체 배열
  
  boolean hit = false; //물체 충돌
  boolean hitx2 = false;
  boolean Lifeis = false;
  
  PImage background;
  
  Scene3(){
      
      //객체 생성
    obj = new object();
    Obs1_professor = new Obstacle();
    Obs2_1_student = new Obstacle();
    Obs2_2_student = new Obstacle();
    Obs3_bicycle = new Obstacle();
    Obs4_dog = new Obstacle();
    
      
    LifeSystem = new ArrayList<Life>();
    LifeSystem.add(new Life(20));
    LifeSystem.add(new Life(45));
    LifeSystem.add(new Life(70));
      
    background = loadImage("background.jpg");
    //image(background,0,0,width,height);
  }
  
  void drawScene3(){
    int ms = millis()/1000;
   
    fill(0); //글씨 색
    countDown = time_limit - ms;
    
   //시간이 있을 때
    if(countDown > 0){
    
    //시간 출력
      image(background,0,0,width,height);
      textSize(20);
      text("Time Remaining to Destination : ",385,30);
      fill(255,0,0);
      text(countDown, 530,31);
      
      
      //충돌 체크
      //CheckCollision1();
      
      CheckCollision();
      
      Obs1_professor.obs_professor();
      Obs2_1_student.obs_student_1();
      Obs2_2_student.obs_student_2();
      Obs3_bicycle.obs_bicycle();
      Obs4_dog.obs_dog();
      obj.drawobj();
      
      
    //충돌하지 않았을때
      //Collision();
      
      //라이프 구현
      for(Life life : LifeSystem){
      life.drawLife();
      }
      
    }else{ //시간이 끝났을 때
       background(0); //배경 변환
       fill(255); //글씨 색
       textSize(50); //글씨 크기
       text("Arrive!",330,height/2); //도착했다는 문구 출력
    }
  }
  
  //void keyPressed(){
  //  if(key == CODED){
  //    if(keyCode == RIGHT){
  //      if(obj.x <= 700){
  //        obj.x += 20;
  //      }
  //      background(255);
  //      image(background,0,0,width,height);
  //    }else if(keyCode == LEFT){
  //      if(obj.x >= 20){
  //        obj.x -= 20;
  //      }
  //      background(255);
  //      image(background,0,0,width,height);
  //    }
  //  }
  //}
  
  
  boolean CheckCollision(){
    if(Obs1_professor.y > obj.y - 10
      ||Obs2_1_student.y > obj.y - 10
      ||Obs2_2_student.y > obj.y - 10
      ||Obs3_bicycle.y > obj.y - 10
      ||Obs4_dog.y > obj.y - 10){
        if(Obs1_professor.x > obj.x - 30 && Obs1_professor.x < obj.x + 30
        || Obs2_1_student.x > obj.x - 30 && Obs2_1_student.x < obj.x + 30
        || Obs2_2_student.x > obj.x - 30 && Obs2_2_student.x < obj.x + 30
        || Obs4_dog.x > obj.x - 30 && Obs4_dog.x < obj.x + 30){
          hit = true;
          println("hit");
          return false;
        }
        if(Obs3_bicycle.x > obj.x - 30 && Obs3_bicycle.x < obj.x + 30){
          hitx2 = true;
          println("hitx2");
          return false;
        }
    }
    return false;
  }
  
  void CheckCollision1(){
    if(Obs1_professor.y > obj.y - 10){
      if(Obs1_professor.x > obj.x - 30 && Obs1_professor.x < obj.x + 30){
        hit = true;
        println("hit");
      }
    }
    
    if(Obs2_1_student.y > obj.y - 10){
      if(Obs2_1_student.x > obj.x - 30 && Obs2_1_student.x < obj.x + 30){
        hit = true;
        println("hit");
      }
    }
    
    if(Obs2_2_student.y > obj.y - 10){
      if(Obs2_2_student.x > obj.x - 30 && Obs2_2_student.x < obj.x + 30){
        hit = true;
        println("hit");
      }
    }
    
    if(Obs3_bicycle.y > obj.y - 10){
      if(Obs3_bicycle.x > obj.x - 30 && Obs3_bicycle.x < obj.x + 30){
        hit = true;
        println("hit");
      }
    }
    
    if(Obs4_dog.y > obj.y - 10){
      if(Obs4_dog.x > obj.x - 30 && Obs4_dog.x < obj.x + 30){
        hitx2 = true;
        println("hitx2");
      }
    }
  }
  
  
  
  
  void Collision(){
    if(LifeSystem.size() > 0){
        
        Obs1_professor.obs_professor();
        Obs2_1_student.obs_student_1();
        Obs2_2_student.obs_student_2();
        Obs3_bicycle.obs_bicycle();
        Obs4_dog.obs_dog();
        obj.drawobj();
        
        //교수,학생,개 충돌
        //라이프 3개일 때
        
        if(LifeSystem.size() == 1 && hit == true){
          LifeSystem.remove(0);
          hit = false;
          Obs1_professor.obs_professor();
          Obs2_1_student.obs_student_1();
          Obs2_2_student.obs_student_2();
          Obs3_bicycle.obs_bicycle();
          Obs4_dog.obs_dog();
          obj.drawobj();
        }
        
        if(LifeSystem.size() == 2 && hitx2 == true){
          LifeSystem.remove(0);
          hitx2 = false;
          Obs1_professor.obs_professor();
          Obs2_1_student.obs_student_1();
          Obs2_2_student.obs_student_2();
          Obs3_bicycle.obs_bicycle();
          Obs4_dog.obs_dog();
          obj.drawobj();
        }
        
        if(LifeSystem.size() == 2 && hit == true){
          LifeSystem.remove(1);
          hit = false;
          Obs1_professor.obs_professor();
          Obs2_1_student.obs_student_1();
          Obs2_2_student.obs_student_2();
          Obs3_bicycle.obs_bicycle();
          Obs4_dog.obs_dog();
          obj.drawobj();
        }
        
        if(LifeSystem.size() == 3 && hit == true){
          LifeSystem.remove(2);
          hit = false;
          Obs1_professor.obs_professor();
          Obs2_1_student.obs_student_1();
          Obs2_2_student.obs_student_2();
          Obs3_bicycle.obs_bicycle();
          Obs4_dog.obs_dog();
          obj.drawobj();
          
        }if(LifeSystem.size() == 3 && hitx2 == true){
          LifeSystem.remove(2);
          LifeSystem.remove(1);
          hitx2 = false;
          Obs1_professor.obs_professor();
          Obs2_1_student.obs_student_1();
          Obs2_2_student.obs_student_2();
          Obs3_bicycle.obs_bicycle();
          Obs4_dog.obs_dog();
          obj.drawobj();
        }
      }else{
          background(0); //게임 오버 화면 변환
          delay(100); //딜레이
      }
  }
}
