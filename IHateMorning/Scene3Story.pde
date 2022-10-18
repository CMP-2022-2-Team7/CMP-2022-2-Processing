class Scene3Story{
   Button goButton;
   String go = "GO";

  Scene3Story(){
   goButton = new Button(700,380,55,40,go); 
    
    goButton.setTexetSize(28);
    goButton.setTextR(135);
    goButton.setTextG(205);
    goButton.setTextB(255);
    goButton.setTextPositionX(728);
    goButton.setTextPositionY(406);
  }

  void drawScene3Story(){
  background(255);
  fill(0);
  textSize(35);
  text("Scene3Story", width/2, 180);
  
  goButton.drawButton();


}
}
