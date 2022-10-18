PImage lobbyImg;
PImage soundImg;
PImage nosoundImg;

class LobbyUI{
  boolean soundStatus = true; // background music status
  String title = "I     H A T E     M O R N I G"; // game title text
  String start = "START"; // start button text
  String credit = "CREDIT"; // credit button text
  int titleMoving = 0;  // variable for title, button's movement

  int startSizeX; // variable for start button's X-axis size
  int startSizeY; // variable for start button's Y-axis size
  int startPositionX; // variable for start button's position X
  int startPositionY; // variable for start button's position Y

  Button startButton; // start button object
  Button creditButton; // credit button object

  LobbyUI(){
    lobbyImg = loadImage("Lovepik_com-400162463-school-scene.jpg"); // lobby background Img
    soundImg = loadImage("_sound.png"); // when the sound comes out
    nosoundImg = loadImage("nosound.png"); // when there's no sound

    /* set the size of start button */
    startSizeX = 400;
    startSizeY = 80;
    startPositionX = width/2-200;
    startPositionY = 400-titleMoving;

    /* generate start button and set specification */
    startButton = new Button(startPositionX, startPositionY, startSizeX, startSizeY, start);
    startButton.setTexetSize(48);
    startButton.setTextR(135);
    startButton.setTextG(206);
    startButton.setTextB(255);
    startButton.setTextPositionX(width/2);
    startButton.setTextPositionY(450-titleMoving);

    /* set the size of credit button */
    startSizeX = 400;
    startSizeY = 80;
    startPositionX = width/2-200;
    startPositionY = 450-titleMoving;

    /* generate credit button and set specification */
    creditButton = new Button(startPositionX, startPositionY, startSizeX, startSizeY, credit);
    creditButton.setTexetSize(48);
    creditButton.setTextR(135);
    creditButton.setTextG(206);
    creditButton.setTextB(255);
    creditButton.setTextPositionX(width/2);
    creditButton.setTextPositionY(460-titleMoving);
  }

  void drawLobby(){
    image(lobbyImg,0,0,800,500);

    if(soundStatus == true){
     image(soundImg,40,380,50,50);
    }else if(!soundStatus){
    image(nosoundImg,40,380,50,50);}

    startPositionY = 300-titleMoving;
    drawTitle();
    //drawStart();

    startButton.drawButton();
    startButton.setButtonPositionY(startPositionY);
    startButton.setTextPositionY(startPositionY+60);

    startPositionY = 400-titleMoving;
    creditButton.drawButton();
    creditButton.setButtonPositionY(startPositionY);
    creditButton.setTextPositionY(startPositionY+60);

    /* make title move */
    if(titleMoving < 100){
      titleMoving++;
    }
  }

  boolean checkClick(){
    if(40 <= mouseX && mouseX <= 90 && 380 <= mouseY && mouseY <= 430){
      return true;
    }
    else return false;
  }

  /* set the property of name of game */
  void drawTitle(){
    fill(255);
    textAlign(CENTER);
    textSize(72);
    text(title, width/2, titleMoving);
  }

  void changeSoundImg(){
    if(soundStatus){
      soundStatus = false;
    }else if(!soundStatus){
      soundStatus = true;}
  }
}
