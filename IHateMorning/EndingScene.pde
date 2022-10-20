class EndingScene{
  PImage endingImg;
  Button endButton;
  String endText = "GAME  OVER";
  
  EndingScene(String ending){
    if(ending.equals("GAME  OVER")){
      endingImg = loadImage("board.png");
      fill(255);
   }else{
      endText = "I  arrive Ajou University!";
      endingImg = loadImage("background_ending.jpeg");
      fill(0);
   }
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
  textSize(70);
  text(endText, width/2, height/2);
  
  endButton.drawButton();

}

}
