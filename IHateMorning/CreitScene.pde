class CreditScene{
  PImage creditImg;
  Button backButton;
  String back = "BACK";
  
  CreditScene(){
    creditImg = loadImage("board.png");
    backButton = new Button(45, 42, 55, 40, back);
    backButton.setTexetSize(25);
    backButton.setTextR(0);
    backButton.setTextG(0);
    backButton.setTextB(0);
    backButton.setButtonA(100);
    backButton.setTextPositionX(73);
    backButton.setTextPositionY(75);
  }
  
  void drawcreditscene(){
  background(135, 206, 235);
  image(creditImg,0,0,800,500);
  fill(185,180,180);
  textSize(40);
  text("202127185 Semin Eun",width/2,150);
  text("201623445 Hyeoungchan Jo",width/2,210);
  text("202127229 Seohyun Moon",width/2,270);
  text("202127254 Hyuna Bae",width/2,330);
  
   backButton.drawButton();
    

  }
}
