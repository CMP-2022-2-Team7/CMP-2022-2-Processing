PImage img2;

class LobbyUI{
  String title = "I    H A T E    M O R N I G"; // game title text
  String start = "START"; // start button text
  String credit = "CREDIT"; // credit button text
  String setting = "SETTING"; // sound button text
  int titleMoving = 0;  // variable for title, button's movement

  int startSizeX; // variable for start button's X-axis size
  int startSizeY; // variable for start button's Y-axis size
  int startPositionX; // variable for start button's position X
  int startPositionY; // variable for start button's position Y

  Button startButton; // start button object
  Button creditButton; // credit button object
  Button settingButton; // setting button object

  LobbyUI(){
    img2 = loadImage("Lovepik_com-400162463-school-scene.jpg");
    /* set the size of start button */
    startSizeX = 400;
    startSizeY = 80;
    startPositionX = width/2-200;
    startPositionY = 300-titleMoving;

    /* generate start button and set specification */
    startButton = new Button(startPositionX, startPositionY, startSizeX, startSizeY, start);
    startButton.setTexetSize(48);
    startButton.setTextR(135);
    startButton.setTextG(206);
    startButton.setTextB(255);
    startButton.setTextPositionX(width/2);
    startButton.setTextPositionY(360-titleMoving);
    
    startSizeX = 400;
    startSizeY = 80;
    startPositionX = width/2-200;
    startPositionY = 400-titleMoving;
    creditButton = new Button(startPositionX, startPositionY, startSizeX, startSizeY, credit);
    creditButton.setTexetSize(48);
    creditButton.setTextR(135);
    creditButton.setTextG(206);
    creditButton.setTextB(255);
    creditButton.setTextPositionX(width/2);
    creditButton.setTextPositionY(460-titleMoving);
    
    startSizeX = 400;
    startSizeY = 80;
    startPositionX = width/2-200;
    startPositionY = 500-titleMoving;
    settingButton = new Button(startPositionX, startPositionY, startSizeX, startSizeY, setting);
    settingButton.setTexetSize(48);
    settingButton.setTextR(135);
    settingButton.setTextG(206);
    settingButton.setTextB(255);
    settingButton.setTextPositionX(width/2);
    settingButton.setTextPositionY(560-titleMoving);
  }
  
  void drawLobby(){
    /* clear sceen */
    background(135, 206, 235);
    image(img2,0,0,800,500);
    startPositionY = 250-titleMoving;

    drawTitle();
    //drawStart();


    startButton.drawButton();
    startButton.setButtonPositionY(startPositionY);
    startButton.setTextPositionY(startPositionY+60);
    
    startPositionY = 350-titleMoving;
    creditButton.drawButton();
    creditButton.setButtonPositionY(startPositionY);
    creditButton.setTextPositionY(startPositionY+60);
    
    startPositionY = 450-titleMoving;
    settingButton.drawButton();
    settingButton.setButtonPositionY(startPositionY);
    settingButton.setTextPositionY(startPositionY+60);

    /* make title move */
    if(titleMoving < 100){
      titleMoving++;
    }
  }

  /* set the property of name of game */
  void drawTitle(){
    textAlign(CENTER);
    textSize(72);
    text(title, width/2, titleMoving);
  }
}
