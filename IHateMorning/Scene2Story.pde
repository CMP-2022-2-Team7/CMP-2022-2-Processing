//PImage storyImg;

class Scene2Story{
 /* Button backButton;
  String back = "BACK";*/

  Scene2Story(){
   /* storyImg = loadImage("storyimage_student.png")
    backButton = new Button(45, 42, 55, 40, back);
 
    backButton.setTexetSize(28);
    backButton.setTextR(135);
    backButton.setTextG(205);
    backButton.setTextB(255);
    backButton.setTextPositionX(73);
    backButton.setTextPositionY(71);*/
  }

  void drawScene2Story(){
  background(255);
  image(storyImg,500,250,210,210);
  fill(0);
  textSize(35);
  text("Scene2Story", width/2, 180);
  //text("You have to hurry up and get ready!", width/2,250);
  
  //backButton.drawButton();
}
}
