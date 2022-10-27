class StoryScene{
  PImage storyImg;
  Button backButton;
  Button goButton; // can delete
  String back = "BACK";
  String go = "GO"; // can delete

 StoryScene(){
    storyImg = loadImage("story.png");
    backButton = new Button(45, 42, 55, 40, back);
    goButton = new Button(700,380,55,40,go); // can delete
    
    backButton.setTexetSize(33);
    backButton.setTextR(121);
    backButton.setTextG(121);
    backButton.setTextB(121);
    backButton.setTextPositionX(73);
    backButton.setTextPositionY(71);
    
    goButton.setTexetSize(33);
    goButton.setTextR(121);
    goButton.setTextG(121);
    goButton.setTextB(121);
    goButton.setTextPositionX(728);
    goButton.setTextPositionY(410);
  }

  void drawstoryscene(){
  background(255);
  image(storyImg,0,0,800,480);
  fill(0);
  
  backButton.drawButton();
  goButton.drawButton();
  }
}
