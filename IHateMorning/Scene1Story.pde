class Scene1Story{
  Button goButton;
  String go = "GO";
  
  Scene1Story(){
    goButton = new Button(700,380,55,40,go); 
    
    goButton.setTexetSize(28);
    goButton.setTextR(135);
    goButton.setTextG(205);
    goButton.setTextB(255);
    goButton.setTextPositionX(728);
    goButton.setTextPositionY(406);
  }

  void drawScene1Story(){
  background(255);
  fill(0);
  textSize(35);
  text("Brush your teeth first!", width/2, 130);
  text("Hold the toothbrush with the mouse and place the toothbrush", width/2, 165);
  text("on top of the germs that keep forming.", width/2, 200);
  text("Then press the space bar five times to get rid of all the germs!", width/2, 235);
  text("If we get rid of a total of five germs within the time limit,", width/2, 270);
  text("we'll be able to get to school quickly!", width/2, 305);

  
  goButton.drawButton();
}
}
