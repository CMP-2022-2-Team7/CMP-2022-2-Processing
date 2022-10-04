class LobbyUI{
  String title = "I HATE MORNIG"; // game title text
  String start = "START"; // start button text
  int titleMoving = 0;  // variable for title, button's movement

  int startSizeX; // variable for start button's X-axis size
  int startSizeY; // variable for start button's Y-axis size
  int startPositionX; // variable for start button's position X
  int startPositionY; // variable for start button's position Y

  Button startButton; // start button object

  LobbyUI(){
    /* set the size of start button */
    startSizeX = 400;
    startSizeY = 100;
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
  }
  void drawLobby(){
    /* clear sceen */
    background(135, 206, 235);
    startPositionY = 300-titleMoving;

    drawTitle();
    //drawStart();


    startButton.drawButton();
    startButton.setButtonPositionY(startPositionY);
    startButton.setTextPositionY(startPositionY+60);

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
