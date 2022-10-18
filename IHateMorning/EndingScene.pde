class EndingScene{
  PImage endingImg;
  Button endButton;
  String endText = "CLEAR";
  
  EndingScene(){
    endingImg = loadImage("board.png");
    endButton = new Button(352,380,110,40,"Back to Title"); 
    
    endButton.setTexetSize(28);
    endButton.setTextR(135);
    endButton.setTextG(205);
    endButton.setTextB(255);
    endButton.setTextPositionX(406);
    endButton.setTextPositionY(406);
  }
void drawEndingScene(){
  image(endingImg,0,0,800,500);
  fill(255);
  textSize(60);
  text(endText, width/2, height/2);
  
  endButton.drawButton();

}

}
