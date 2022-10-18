class StoryScene{
  PImage storyImg;
  PImage clockImg;
  Button backButton;
  Button goButton; // can delete
  String back = "BACK";
  String go = "GO"; // can delete

 StoryScene(){
    storyImg = loadImage("storyimage_student.png");
    clockImg = loadImage("clock.png");
    backButton = new Button(45, 42, 55, 40, back);
    goButton = new Button(700,380,55,40,go); // can delete
    
    backButton.setTexetSize(28);
    backButton.setTextR(135);
    backButton.setTextG(205);
    backButton.setTextB(255);
    backButton.setTextPositionX(73);
    backButton.setTextPositionY(71);
    
    goButton.setTexetSize(28);
    goButton.setTextR(135);
    goButton.setTextG(205);
    goButton.setTextB(255);
    goButton.setTextPositionX(728);
    goButton.setTextPositionY(406);
  }

  void drawstoryscene(){
  background(255);
  image(storyImg,480,240,230,230);
  image(clockImg,50,30,350,350);
  fill(0);
  textSize(50);
  text("I  had  to  go  to  school  by  nine,  but  I  overslept,,", width/2, 180);
  text("You  have  to  hurry  up  and  get  ready!", width/2,250);
  
  backButton.drawButton();
  goButton.drawButton();
  }
}
