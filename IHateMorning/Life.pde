class Life{
  PImage life;
  int lifex;
  int lifey;
  
  Life(int x){
    life = loadImage("Life.png");
    lifex = x;
    lifey = 10;
  }
  
  //draw Life
  void drawLife(){
      image(life,lifex,lifey);
  }
}
