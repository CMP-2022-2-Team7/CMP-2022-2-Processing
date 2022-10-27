class Scene1Story{
  PImage story1Img;
  Button goButton;
  String go = "GO";
  
  Scene1Story(){
    story1Img = loadImage("2.png");
    
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

  void drawScene1Story(){
  image(story1Img,0,0,800,450);
  
  goButton.drawButton();
}
}
