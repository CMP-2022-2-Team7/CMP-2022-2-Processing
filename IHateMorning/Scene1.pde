class Scene1{
  PImage background;
  PImage backgroundZero;  //face that before brushing
  PImage toothbrush;
  PImage Tbrush;  //toothbrush while brushing
  PImage basic;  //basic state of germ
  PImage ouch;  //hit state of germ
  PImage dead;  //dead state of germ
  float xposT, yposT;  //toothbrush position
  float xpos, ypos;  //germ position
  boolean brush = false;
  boolean pick = false;
  boolean germ_exist = false;
  boolean timer = false;
  boolean click = true;  //front side toothbrush not appear again
  boolean stop = false; //when game over, follow stop
  int timeLimit = 450;
  int hp = 5;
  int success = 0;

  Scene1(){
    //basic setting
    backgroundZero = loadImage("beforeface.jpg");  //face that before brushing
    background = loadImage("face.jpg");  //face that while brushing
    toothbrush = loadImage("toothbrush.png");
    Tbrush = loadImage("brush.png");
    basic = loadImage("basicgerm.png");  //basic state of germ
    ouch = loadImage("ouchgerm.png");  //hit state of germ
    dead = loadImage("deadgerm.png");  //dead state of germ
  }

  void drawScene1(){
    image(backgroundZero, 0, 0, width, height);  //face that before brushing
    image(toothbrush, 650, 350);  //toothbrush case image
    if (brush == true) {  //brushing & timer start & germ create
     stop = true;
     if (germ_exist == true) {
       germ_ex();  //start to form germ
     }
     timer();
     if(stop == true){
     brush_ex();  //toothbrush follows
     }
     timeLimit--;
  }
  if (pick == true) {  //pick toothbrush
    brush = true;
    germ_exist = true;
    pick = false;
  }
  }
  
  void brush_ex() {
    if(stop == true) {
      toothbrush_follow();
    }
  }

  void germ_ex() {
  if (germ_exist == true) {
    germ();
    germ_exist = false;
  }
}

void toothbrush_follow() {  //image of toothbrush is following
  tint(255,150);
  image(Tbrush, xposT - 100, yposT - 50, 150, 150);
  noTint();
  xposT = lerp(xposT, mouseX, 1);
  yposT = lerp(yposT, mouseY, 1);
}

 void germ() {  
    xpos = random(width);
    ypos = random(height);
    xpos = constrain(xpos, 220, 565);
    ypos = constrain(ypos, 295, 390);
  }

  void timer() {
  if (timeLimit > 0) {
    image(background, 0, 0, width, height);  //face while brushing
    image(basic, xpos - 20, ypos - 20, 40, 40);  //germ
    fill(0);
    textSize(40);
    text("Remaining Time : " + timeLimit / 30, 380, 45);
  } else {
    stop = false;
  /*  background(0);
    fill(255);
    textSize(100);
    text("GAME OVER", 380, 260);  //move to game over scene*/
    move1 = false;
    endingscene.endText = "G A M E  O V E R";
    moveending = true;
  }
}
}
