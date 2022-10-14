class Scene1{
  PImage background;
  PImage toothbrush;
  float xpos_t, ypos_t;  //toothbrush position
  float xpos, ypos;  //germ position
  boolean brush = false;
  boolean pick = false;
  boolean germ_exist = false;
  boolean timer = false;
  boolean click = true;  //front side toothbrush not appear again
  int timeLimit = 30;  //**timer will only start when 'brush' turned true but start when game is started
  int countDown;
  int hp = 5;
  int success = 0;

  Scene1(){
    //basic setting
    background = loadImage("face.jpg");
    toothbrush = loadImage("toothbrush.png");
  }

  void drawScene1(){
    image(background, 0, 0, width, height);
    image(toothbrush, 650, 350);
    if (brush == true) {  //brushing & timer start & germ create
     if (germ_exist == true) {
       println("germ_exist is true");
       germ_ex();
     }
    toothbrush_follow();  //**not following -> need fixing
    timer();
  }
  if (pick == true) {  //pick toothbrush
    println("Let's Start!");
    toothbrush_follow();
    brush = true;
    germ_exist = true;
    pick = false;
  }
  }

  void germ_ex() {
  if (germ_exist == true) {
    germ();
    germ_exist = false;
  }
}

void toothbrush_follow() {
  xpos_t = lerp(xpos_t, mouseX, 1);
  ypos_t = lerp(ypos_t, mouseY, 1);
}

 void germ() {
    xpos = random(width);
    ypos = random(height);
    xpos = constrain(xpos, 210, 570);
    ypos = constrain(ypos, 285, 400);
    fill(150);
    ellipse(xpos, ypos, 25, 25);
  }

  void timer() {
    //println("Timer Start");
  int ms = millis() / 1000;
  countDown = timeLimit - ms;
  if (countDown > 0) {
    image(background, 0, 0, width, height);
    fill(150);
    ellipse(xpos, ypos, 25, 25);
    fill(0);
    textSize(20);
    text("Remaining Time : " + countDown, 380, 40);
  } else {
    background(0);
    fill(255);
    textSize(100);
    text("GAME OVER", 380, 260);  //move to game over scene
  }
}
}
