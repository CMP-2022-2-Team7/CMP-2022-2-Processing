class Scene1Story{
  PImage story1Img;
  Button goButton;
  String go = "GO";
  
  Scene1Story(){
    story1Img = loadImage("board.png");
    
    goButton = new Button(378,380,55,40,go); 
    
    goButton.setTexetSize(28);
    goButton.setTextR(135);
    goButton.setTextG(205);
    goButton.setTextB(255);
    goButton.setTextPositionX(406);
    goButton.setTextPositionY(406);
  }

  void drawScene1Story(){
  image(story1Img,0,0,800,500);
  fill(255);
  textSize(35);
  text("Brush  your  teeth  first!", width/2, 120);
  text("Hold  the  toothbrush  with  the  mouse  and  place  the  toothbrush", width/2, 160);
  text("on  top  of  the  germs  that  keep  forming.", width/2, 200);
  text("Then  press  the  space  bar  five  times  to  get  rid  of  all  the  germs!", width/2, 240);
  text("If  we  get  rid  of  a  total  of  five  germs  within  the  time  limit,", width/2, 280);
  text("we'll  be  able  to  get  to  school  quickly!", width/2, 320);

  
  goButton.drawButton();
}
}
