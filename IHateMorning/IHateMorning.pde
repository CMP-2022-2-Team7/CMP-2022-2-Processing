LobbyUI lobbyUI;
Scene2 scene2;
Scene3 scene3;

/* temporary variables for moving to other stage */
boolean move0;
boolean move2;
boolean move3;

void setup(){
  size(800, 450);

  lobbyUI = new LobbyUI();
  scene2 = new Scene2();
  scene3 = new Scene3();
  move0 = true;
  move2 = false;
  move3 = false;
}
void draw(){
  if(move0 == true){
    lobbyUI.drawLobby();
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
      scene2.pickDish();
    }
    else if(scene2.ingredientButton2.checkClick()){
      background(0);
      scene2.button1Clicked = false;
      scene2.button2Clicked = true;
      scene2.button3Clicked = false;
      scene2.pickDish();
    }
    else if(scene2.ingredientButton3.checkClick()){
      background(0);
      scene2.button1Clicked = false;
      scene2.button2Clicked = false;
      scene2.button3Clicked = true;
      scene2.pickDish();
    }
  }
}

void keyPressed(){
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
      //if(move2 == false){
      //  move0 = false;
      //  move3 = true;
      //}
      //else if(move2 == true){
      //  move0 = false;
      //  move2 = false;
      //  move3 = true;
      //}
      move0 = false;
      move2 = false;
      move3 = true;
    }
    else if(move3 == true){
      move0 = true;
      move3 = false;
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
