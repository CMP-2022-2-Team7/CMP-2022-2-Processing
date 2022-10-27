class Scene3Story{
   PImage story3Img;
   Button goButton;
   String go = "GO";

  Scene3Story(){
   story3Img = loadImage("4.png");
    
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

  void drawScene3Story(){
  image(story3Img,0,0,800,450);
  fill(255);
 
  goButton.drawButton();


}
}
