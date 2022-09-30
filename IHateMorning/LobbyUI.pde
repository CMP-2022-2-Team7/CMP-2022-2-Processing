class LobbyUI{
  String title = "I HATE MORNIG"; // game title text
  String start = "START"; // start button text
  int titleMoving = 0;  // variable for title, button's movement

  int startSizeX; // variable for start button's X-axis size
  int startSizeY; // variable for start button's Y-axis size
  int startPositionX; // variable for start button's position X
  int startPositionY; // variable for start button's position Y

  LobbyUI(){
    /* set the size of start button */
    startSizeX = 400;
    startSizeY = 100;
    startPositionX = width/2-200;
    startPositionY = 300-titleMoving;
  }
  void drawLobby(){
    /* clear sceen */
    background(135, 206, 235);

    drawTitle();
    drawStart();

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

  /* set the start button */
  void drawStart(){
    startPositionY = 300-titleMoving;

    /* draw start button */
    fill(255);
    noStroke();
    rect(startPositionX, startPositionY, startSizeX, startSizeY, 28);
    textSize(48);
    fill(135, 206, 255);
    text(start, width/2, 360-titleMoving);
    fill(255);
  }
}
