PImage img;
PFont font;

class CreditScene{
  
  Button backButton;
  String back = "BACK";
  
  CreditScene(){
    font = loadFont("FreestyleScript-Regular-48.vlw");
    img = loadImage("board.png");
    textFont(font,20);
  backButton = new Button(45, 42, 55, 40, back);
    backButton.setTexetSize(28);
    backButton.setTextR(0);
    backButton.setTextG(0);
    backButton.setTextB(0);
    backButton.setTextPositionX(73);
    backButton.setTextPositionY(71);
  }
  
  void drawcreditscene(){
//  img = loadImage("image.png");
  background(135, 206, 235);
   image(img,0,0,800,500);
  textSize(45);
  text("202127185 Semin Eun",width/2,150);
  text("201623445 Hyeoungchan Jo",width/2,210);
  text("202127229 Seohyun Moon",width/2,270);
  text("202127254 Hyuna Bae",width/2,330);
  
   backButton.drawButton();
    

  }
}
