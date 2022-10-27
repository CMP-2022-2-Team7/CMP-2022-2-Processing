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
  /*textSize(35);
  text("There's  not  much  time  left  until  school.", width/2, 130);
  text("Let's  get  to  school  safely  and  avoid  obstacles  using  the  left / right  direction  keys", width/2, 165);
  text("on  your  keyboard  within  the  time  limit!", width/2, 200);
  text("If  you  touch  an  obstacle  other  than  a  bicycle, ", width/2, 235);
  text("you'll  use  up  one  life  and  two  lives  on  a  bicycle!", width/2, 270);
  text("If  you  run  out  of  life,  the  game  will  be  over,  so  let's  quickly  avoid  obstacles!", width/2, 305);*/
  
  goButton.drawButton();


}
}
