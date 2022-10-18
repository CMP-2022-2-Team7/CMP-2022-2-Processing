class Scene2Story{
   PImage story2Img;
   Button goButton;
   String go = "GO";

  Scene2Story(){
    story2Img = loadImage("board.png");

    goButton = new Button(700,42,55,40,go); 
    
    goButton.setTexetSize(28);
    goButton.setTextR(0);
    goButton.setTextG(0);
    goButton.setTextB(0);
    goButton.setTextPositionX(728);
    goButton.setTextPositionY(71);
  }

  void drawScene2Story(){
  image(story2Img,0,0,800,500);
  fill(255);
  textSize(35);
  text("Now  you  have  to  eat  breakfast!", width/2, 205);
  text("pick  the  category  you  want  and  decide  eating  or  not  until  your  mom  is  satisfied", width/2, 240);
  text("Enjoy  your  meal!!", width/2, 275);
  
  goButton.drawButton();
}
}
