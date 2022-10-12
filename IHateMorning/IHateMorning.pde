import processing.sound.*;
SoundFile bgm;

LobbyUI lobbyUI;
creditScene creditscene;
settingScene settingscene;
storyScene storyscene;
Scene2 scene2;

/* temporary variables for moving to other stage */
boolean move0;
boolean movecredit;
boolean movesetting;
boolean movestory;
boolean move2;

//기본bgm 음량 변수
float volume = 1.0;

void setup(){
  bgm = new SoundFile(this,"Alon Peretz - Touch Base.mp3");
  bgm.play();
 
  size(800, 450);
  
  lobbyUI = new LobbyUI();
  creditscene = new creditScene();
  settingscene = new settingScene();
  storyscene = new storyScene();
  scene2 = new Scene2();
  
  move0 = true;
  move2 = false;
  movecredit = false;
  movesetting = false;
  movestory = false;
}

void draw(){
  bgm.amp(volume);
  
  if(move0 == true){
    lobbyUI.drawLobby();
  }
  if(movecredit == true){
  creditscene.drawcreditscene();
  }
  if(movesetting== true){
  settingscene.drawsettingscene();
  }
  if(movestory == true){
    storyscene.drawstoryscene();
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
      movestory = true;  // for checking(can be deleted)
    }
    if(lobbyUI.creditButton.checkClick()){
      move0 = false;
      movesetting = false;
      movecredit = true;
    }
    if(lobbyUI.settingButton.checkClick()){
      move0 = false;
      movesetting = true;
    }
  }
  
 if(movecredit == true){
  if(creditscene.backButton.checkClick()){
      move0 = true;
      movecredit = false; 
    }
  }
  
if(movesetting == true){
  if(settingscene.backButton.checkClick()){
      move0 = true;
      movesetting = false; 
    }
  }
  
  if(movestory == true){
  if(storyscene.backButton.checkClick()){
      move0 = true;
      movestory = false; 
    }
   if(storyscene.goButton.checkClick()){
   background(0);
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

void mouseDragged(){
//constrain(soundscene.a,250,630);
settingscene.a = mouseX;
if(settingscene.a>620){
settingscene.a = 620;
}else if(settingscene.a<250){
settingscene.a = 270;
}
volume = settingscene.sound ;
 
}
