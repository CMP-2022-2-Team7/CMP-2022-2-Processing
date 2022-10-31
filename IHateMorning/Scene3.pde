class Scene3{
  
  //Create Object
  Object obj;
  Obstacle obs1Professor;
  Obstacle obs2Student1;
  Obstacle obs2Student2;
  Obstacle obs2Student3;
  Obstacle obs3Bicycle;
  Obstacle obs4Dog;
  Obstacle obs5Ball;
  
  
  int timeLimit = 10; //Time Range
  int ms = 1800; //Current Time
  
  
  ArrayList<Life> lifeSystem; //Life System Array
  ArrayList<Book> bookArray; //Throwing Book Array
  ArrayList<Book> drawBookArray; //Drawing Book Array
  
  //Player and Obstacle Collision Variables
  boolean hitProfessor = false;
  boolean hitStudent1 = false;
  boolean hitStudent2 = false;
  boolean hitStudent3 = false;
  boolean hitBicycle = false;
  boolean hitDog = false;
  boolean hitBall = false;
  
  //Book and Obstacle Collision Variables
  boolean bookProfessor = false;
  boolean bookStudent1 = false;
  boolean bookStudent2 = false;
  boolean bookStudent3 = false;
  boolean bookBicycle = false;
  boolean bookDog = false;
  boolean bookBall = false;
  boolean bookNoHit = false;
  
  //Life Presence Variables
  boolean lifeis = false;
  
  PImage background;
  
  Scene3(){
      
    //Create Object
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
    
    bookArray = new ArrayList<Book>();
    bookArray.add(new Book());
    bookArray.add(new Book());
    bookArray.add(new Book());
    
    drawBookArray = new ArrayList<Book>();
    drawBookArray.add(new Book(20));
    drawBookArray.add(new Book(45));
    drawBookArray.add(new Book(70));
    
    background = loadImage("background_road.png");
  }
  
  void drawScene3(){
   
    fill(0); //Text Color
    
   //Run when you have time
    if(ms > 0){
      //Time Remaining Output
      image(background,0,0,width,height);
      textSize(35);
      text("Time Remaining to Destination : ",373,40);
      fill(255,0,0);
      text(ms/60, 570,41);
      
      //Collision check
      CheckCollision();
      
      //Changes in life and items in the event of a collision
      collision();
      
      //Draw the rest of life
      for(Life life : lifeSystem){
        life.drawLife();
      }
      
      //Draw the rest of Book (item)
      for(Book book : drawBookArray){
        book.drawBook();
      }
      
      //Draw throwing Book
      if(bookthrow == true){
        if(bookArray.size() > 0){
          bookArray.get(bookArray.size()-1).bookX = obj.x;
          bookArray.get(bookArray.size()-1).bookY -= 5;
          bookArray.get(bookArray.size()-1).throwBook();
          
          if(bookArray.get(bookArray.size()-1).bookY == -100){
            bookthrow = false;
            bookNoHit = true;
            if(bookArray.size() > 0){
              bookArray.remove(bookArray.size()-1);
            }
          }
        }
      }
      
      ms --;
      
    }else{ //Run at the end of time
       move3 = false;
       moveending2 = true;
    }
  }
  
  
  
  void CheckCollision(){
    
  //Check for Obstacle Conflicts with the Player
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
  
  //Check book (item) and obstacle conflicts
  if(bookArray.size() > 0 && bookthrow == true){
    if(obs1Professor.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs1Professor.y < bookArray.get(bookArray.size()-1).bookY + 70){
      if(obs1Professor.x > bookArray.get(bookArray.size()-1).bookX - 30 && obs1Professor.x < bookArray.get(bookArray.size()-1).bookX + 45){
        bookProfessor = true;
        obs1Professor.y = -100;
        obs1Professor.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
    
    else if(obs2Student1.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs2Student1.y < bookArray.get(bookArray.size()-1).bookY + 70){
      if(obs2Student1.x > bookArray.get(bookArray.size()-1).bookX - 40 && obs2Student1.x < bookArray.get(bookArray.size()-1).bookX + 45){
        bookStudent1 = true;
        obs2Student1.y = -100;
        obs2Student1.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
    
    else if(obs2Student2.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs2Student2.y < bookArray.get(bookArray.size()-1).bookY + 50){
      if(obs2Student2.x > bookArray.get(bookArray.size()-1).bookX - 40 && obs2Student2.x < bookArray.get(bookArray.size()-1).bookX + 40){
        bookStudent2 = true;
        obs2Student2.y = -100;
        obs2Student2.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
    
    else if(obs2Student3.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs2Student3.y < bookArray.get(bookArray.size()-1).bookY + 50){
      if(obs2Student3.x > bookArray.get(bookArray.size()-1).bookX - 40 && obs2Student3.x < bookArray.get(bookArray.size()-1).bookX + 40){
        bookStudent3 = true;
        obs2Student3.y = -100;
        obs2Student3.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
    
    else if(obs3Bicycle.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs3Bicycle.y < bookArray.get(bookArray.size()-1).bookY + 50){
      if(obs3Bicycle.x > bookArray.get(bookArray.size()-1).bookX -40 && obs3Bicycle.x < bookArray.get(bookArray.size()-1).bookX + 30){
        bookBicycle = true;
        obs3Bicycle.y = -100;
        obs3Bicycle.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
    
    else if(obs4Dog.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs4Dog.y < bookArray.get(bookArray.size()-1).bookY + 50){
      if(obs4Dog.x > bookArray.get(bookArray.size()-1).bookX - 45 && obs4Dog.x < bookArray.get(bookArray.size()-1).bookX + 50){
        bookDog = true;
        obs4Dog.y = -100;
        obs4Dog.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
    
    else if(obs5Ball.y > bookArray.get(bookArray.size()-1).bookY - 30 && obs5Ball.y < bookArray.get(bookArray.size()-1).bookY + 50){
      if(obs5Ball.x > bookArray.get(bookArray.size()-1).bookX - 45 && obs5Ball.x < bookArray.get(bookArray.size()-1).bookX + 40){
        bookBall = true;
        obs5Ball.y = -100;
        obs5Ball.x = random(100,600);
        bookthrow = false;
        if(bookArray.size() > 0){
          bookArray.remove(bookArray.size()-1);
        }
      }
    }
  }else{
      bookthrow = false;
  }
}
  
  //Changes in life and items in the event of a collision
  void collision(){
    
    //Run when you have remaining life
    if(lifeSystem.size() > 0){
      
      obs1Professor.moveObstacle();
      obs2Student1.moveObstacle();
      obs2Student2.moveObstacle();
      obs2Student3.moveObstacle();
      obs3Bicycle.moveObstacle();
      obs4Dog.moveObstacle();
      obs5Ball.moveObstacle();
      obj.drawObject();
      
      //When a book collides with an obstacle
      if(drawBookArray.size() > 0){
        if(bookProfessor == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookProfessor = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookProfessor = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookProfessor = false;
          }
        }
        else if(bookStudent1 == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookStudent1 = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookStudent1 = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookStudent1 = false;
          }
        }
        else if(bookStudent2== true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookStudent2 = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookStudent2 = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookStudent2 = false;
          }
        }
        else if(bookStudent3 == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookStudent3 = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookStudent3 = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookStudent3 = false;
          }
        }
        else if(bookBicycle == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookBicycle = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookBicycle = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookBicycle = false;
          }
        }
        else if(bookDog == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookDog = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookDog = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookDog = false;
          }
        }
        else if(bookBall == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookBall = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookBall = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookBall = false;
          }
        }
        else if(bookNoHit == true){
          if(drawBookArray.size() == 1){
            drawBookArray.remove(0);
            bookNoHit = false;
            
          } else if(drawBookArray.size() == 2){
            drawBookArray.remove(1);
            bookNoHit = false;
  
          } else if(drawBookArray.size() == 3){
            drawBookArray.remove(2);
            bookNoHit = false;
          }
        }
      }
      
      
      //When a player conflicts with a professor
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
        //When a player conflicts with a Student1
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
        //When a player conflicts with a Student2
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
        //When a player conflicts with a Student3
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
        //When a player conflicts with a Bicycle
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
        //When a player conflicts with a Dog
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
        //When a player conflicts with a Ball
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
    }else{  //Run when you don't have remaining life
      move3 = false;
      endingscene.endText = "GAME OVER";
      moveending = true;
      }
  }
  
  
}
