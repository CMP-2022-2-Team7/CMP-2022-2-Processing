class Scene2Story{
   PImage story2Img;
   Button goButton;
   String go = "GO";

  Scene2Story(){
    story2Img = loadImage("3.png");

 goButton = new Button(378,400,55,40,go); 
    
    goButton.setTexetSize(28);
    goButton.setTextR(255);
    goButton.setTextG(255);
    goButton.setTextB(255);
    goButton.setButtonR(0);
    goButton.setButtonG(0);
    goButton.setButtonB(0);
    goButton.setButtonA(150);
    goButton.setTextPositionX(406);
    goButton.setTextPositionY(435);
  }

  void drawScene2Story(){
  image(story2Img,0,0,800,480);
  fill(255);
/*  textSize(35);
  text("Now  you  have  to  eat  breakfast!", width/2, 205);
  text("pick  the  category  you  want  and  decide  eating  or  not  until  your  mom  is  satisfied", width/2, 240);
  text("Enjoy  your  meal!!", width/2, 275);*/
  
  goButton.drawButton();
}
}
