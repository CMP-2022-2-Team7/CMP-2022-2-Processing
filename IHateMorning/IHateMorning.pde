import processing.sound.*;
SoundFile bgm;
SoundFile bgm1;
PFont font;

LobbyUI lobbyUI;
CreditScene creditscene;
StoryScene storyscene;
Scene1Story scene1story;
Scene1 scene1;
Scene2 scene2;
Scene3 scene3;

/* temporary variables for moving to other stage */
boolean move0;
boolean movecredit;
boolean movestory;
boolean movestory1;
boolean move1;
boolean move2;
boolean move3;

boolean objMoveRight;
boolean objMoveLeft;

float volume = 1.0;
 
  
void setup(){
  //temporary background music
  bgm = new SoundFile(this,"Alon Peretz - Touch Base.mp3");
  bgm1 = new SoundFile(this, "p-20-122596.mp3");
  bgm.play();

  //temporary font
  font = loadFont("FreestyleScript-Regular-48.vlw");

  size(800, 450);

  lobbyUI = new LobbyUI();
  creditscene = new CreditScene();
  storyscene = new StoryScene();
  scene1story = new Scene1Story();
  scene1 = new Scene1();
  scene2 = new Scene2();
  scene3 = new Scene3();
  move0 = true;
  movecredit = false;
  movestory = false;
  move1 = false;
  move2 = false;
  move3 = false;
}
void draw(){

  textFont(font,50);
  
  if(move0 == true){
    lobbyUI.drawLobby();
  }
  if(movecredit == true){
  creditscene.drawcreditscene();
  }
  if(movestory == true){
    storyscene.drawstoryscene();
  }
  if(movestory1 == true){
    scene1story.drawScene1Story();
  }
  if(move1 == true){
    scene1.drawScene1();
  }
  /* when '2' is pressed, move to stage 2 */
  if(move2 == true){
    scene2.drawScene2();
    if(scene2.scene2Checking == 3){
      move2 = false;
      move3 = true;
    }
  }
  if(move3 == true){
    if(objMoveRight == true){
      if(scene3.obj.x <= 700){
        scene3.obj.x += 3;
      }
    }
    if(objMoveLeft == true){
      if(scene3.obj.x >= 20){
        scene3.obj.x -= 3;
      }
    }
    scene3.drawScene3();
  }
}

void mousePressed(){
  if(move0 == true){
     // if mouse is on start button, can click it
    if(lobbyUI.startButton.checkClick()){
      move0 = false;
      movestory = true;
    }
     // if mouse is on credit button, can click it
    if(lobbyUI.creditButton.checkClick()){
      move0 = false;
      movecredit = true;
    }
    // if mouse is on sound image, can click it
    if(lobbyUI.checkClick()){
      lobbyUI.changeSoundImg();
      if(lobbyUI.soundStatus == true){
        bgm.play();
      }else if(lobbyUI.soundStatus == false){
      bgm.pause();}
    }
  }

  if(movecredit == true){
   if(creditscene.backButton.checkClick()){
      move0 = true;
      movecredit = false;
    }
  }
  if(movestory == true){
   if(storyscene.backButton.checkClick()){
      move0 = true;
      movestory = false;
    }else if(storyscene.goButton.checkClick()){
     movestory = false;
     movestory1 = true;
   }
  }


 if(movestory1 == true){
    if(scene1story.goButton.checkClick()){
    background(255);
   }}

   
  if(move2 == true){
    if(scene2.phase1){
      if(scene2.ingredientButton1.checkClick()){
        scene2.button1Clicked = true;
        scene2.button2Clicked = false;
        scene2.button3Clicked = false;
        scene2.pickCategory();
      }
      else if(scene2.ingredientButton2.checkClick()){
        scene2.button1Clicked = false;
        scene2.button2Clicked = true;
        scene2.button3Clicked = false;
        scene2.pickCategory();
      }
      else if(scene2.ingredientButton3.checkClick()){
        scene2.button1Clicked = false;
        scene2.button2Clicked = false;
        scene2.button3Clicked = true;
        scene2.pickCategory();
      }
    }
    else if(scene2.phase2){
      if(scene2.yesButton.checkClick()){
        scene2.phase1 = true;
        scene2.phase2 = false;
        scene2.scene2Checking++;
      }
      else if(scene2.noButton.checkClick()){
        scene2.phase1 = true;
        scene2.phase2 = false;
      }
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
          scene1.hp = scene1.hp - 1;  //check germ's hp
          //println("hp = " + scene1.hp);
          image(scene1.background, 0, 0, width, height);
          scene1.timer();
          image(scene1.ouch, scene1.xpos - 20, scene1.ypos - 20, 40, 40);  //when germ is hit
          scene1.toothbrush_follow();
        }
      }
      if (scene1.hp == 0) {
        scene1.hp = 5;
        image(scene1.background, 0, 0, width, height);
        scene1.timer();
        stroke(1);
        image(scene1.dead, scene1.xpos - 20, scene1.ypos - 20, 40, 40);  //when germ dead
        noStroke();
        scene1.germ_exist = true;
        scene1.success = scene1.success + 1;  //check success times
        //println("success : " + scene1.success);
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
        objMoveRight = true;
      }else if(keyCode == LEFT){
        objMoveLeft = true;
      }
    }
  }
}

void keyReleased(){
  if(keyCode == RIGHT){
    objMoveRight = false;
  }
  if(keyCode == LEFT){
    objMoveLeft = false;
  }
}
