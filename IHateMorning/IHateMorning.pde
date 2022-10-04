LobbyUI lobbyUI;
Scene2 scene2;

/* temporary variables for moving to other stage */
boolean move0;
boolean move2;

void setup(){
  size(800, 450);

  lobbyUI = new LobbyUI();
  scene2 = new Scene2();
  move0 = true;
  move2 = false;
}
void draw(){
  if(move0 == true){
    lobbyUI.drawLobby();
  }
  /* when '2' is pressed, move to stage 2 */
  if(move2 == true){
    scene2.drawScene2();
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
    }
    else if(scene2.ingredientButton2.checkClick()){
      background(0);
    }
    else if(scene2.ingredientButton3.checkClick()){
      background(0);
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
}
