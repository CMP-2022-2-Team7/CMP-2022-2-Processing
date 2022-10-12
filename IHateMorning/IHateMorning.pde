LobbyUI lobbyUI;
Scene1 scene1;
Scene2 scene2;
Scene3 scene3;

/* temporary variables for moving to other stage */
boolean move0;
boolean move1;
boolean move2;
boolean move3;

void setup(){
  size(800, 450);

  lobbyUI = new LobbyUI();
  scene1 = new Scene1();
  scene2 = new Scene2();
  scene3 = new Scene3();
  move0 = true;
  move1 = false;
  move2 = false;
  move3 = false;
}
void draw(){
  if(move0 == true){
    lobbyUI.drawLobby();
  }
  if(move1 == true){
    scene1.drawScene1();
  }
  /* when '2' is pressed, move to stage 2 */
  if(move2 == true){
    scene2.drawScene2();
  }
  if(move3 == true){
    scene3.drawScene3();
  }
}
void mousePressed(){
  /* if mouse is on start button, can click it */
  if(move0 == true){
    if(lobbyUI.startButton.checkClick()){
      background(0);  // for checking(can be deleted)
    }
  }
  if(move2 == true){
    if(scene2.ingredientButton1.checkClick()){
      background(0);
      scene2.button1Clicked = true;
      scene2.button2Clicked = false;
      scene2.button3Clicked = false;
    }
    else if(scene2.ingredientButton2.checkClick()){
      background(0);
      scene2.button1Clicked = false;
      scene2.button2Clicked = true;
      scene2.button3Clicked = false;
    }
    else if(scene2.ingredientButton3.checkClick()){
      background(0);
      scene2.button1Clicked = false;
      scene2.button2Clicked = false;
      scene2.button3Clicked = true;
    }
  }
}

void mouseClicked(){
  if(move1 == true){
    if(mouseButton == LEFT) {
      if(scene1.click == true) {  //range :(670, 350, 90, 100)
        if(mouseX > 580 && mouseX < 760) {
          if(mouseY > 250 && mouseY < 450) {
            scene1.pick = true;
          }
        } else {
          return;
        }
      }
      scene1.click = false;
    }
  }
}

void keyPressed(){
  if(key == '1'){
    if(move1 == false){
      move0 = false;
      move1 = true;
      move2 = false;
      move3 = false;
    }
    else if(move1 == true){
      move0 = false;
      move1 = false;
      move2 = true;
      move3 = false;
    }
  }
  /* use number 2, for turn on/off stage 2 */
  if(key == '2'){
    if(move2 == false){
      move0 = false;
      move2 = true;
    }
    else if(move2 == true){
      move0 = true;
      move2 = false;
    }
  }
  if(key == '3'){
    if(move3 == false){
      move0 = false;
      move2 = false;
      move3 = true;
    }
    else if(move3 == true){
      move0 = true;
      move3 = false;
    }
  }
  if(move1 == true){
    if(keyCode == ' ') {
      if(mouseX >= scene1.xpos - 12.5 && mouseX <= scene1.xpos + 12.5) {
        if (mouseY >= scene1.ypos - 12.5 && mouseY <= scene1.ypos + 12.5) {
          scene1.hp = scene1.hp - 1;
          println("hp = " + scene1.hp);
        }
      }
      if (scene1.hp == 0) {
        scene1.hp = 5;
        background(255);
        image(scene1.background, 0, 0, width, height);
        scene1.timer();
        scene1.germ_exist = true;
        scene1.success = scene1.success + 1;
        println("success : " + scene1.success);
       }
       if (scene1.success == 5) {
         move2 = true;
         println("STAGE 2"); //move to stage 2
         scene1.germ_exist = false;
         scene1.timer = false;
       }
     }
  }
  if(move3 == true){
    if(key == CODED){
      if(keyCode == RIGHT){
        if(scene3.obj.x <= 700){
          scene3.obj.x += 20;
        }
        image(scene3.background,0,0,width,height);
      }else if(keyCode == LEFT){
        if(scene3.obj.x >= 20){
          scene3.obj.x -= 20;
        }
        image(scene3.background,0,0,width,height);
      }
    }
  }
}
