/*PImage img4;
PImage img5;

class soundScene{
  
  Button backButton;
  String back = "BACK";
  int a =width/2;
  float sound;
  
  soundScene(){
     img4 = loadImage("board.png");
     img5 = loadImage("sound.png");
  backButton = new Button(73,62, 55, 40, back);
    backButton.setTexetSize(28);
    backButton.setTextR(0);
    backButton.setTextG(0);
    backButton.setTextB(0);
    backButton.setTextPositionX(73);
    backButton.setTextPositionY(71);
  }
  
 void drawsoundscene(){
   
   image(img4,0,0,800,500);
  
  
   fill(167, 177, 185,50);
   rectMode(CENTER);
   rect(width/2,height/2,530,250,30);
   
   fill(255,50);
   rect(440,height/2,380,20,10);
   textSize(25);
   image(img5,172,193,60,60);
   ellipseMode(CENTER);
   fill(0);
   constrain(soundscene.a,250,630);
   sound = map(a,250,630,0.0,1.0);
   ellipse(a, height/2, 50, 50);

  backButton.drawButton();


  }

}*/
