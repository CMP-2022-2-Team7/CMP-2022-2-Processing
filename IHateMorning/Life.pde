class Life{
  PImage Life;
  int Life_x;
  int Life_y;
  
  Life(int x){
    Life = loadImage("Life.png");
    Life_x = x;
    Life_y = 10;
  }
  
  void drawLife(){
      image(Life,Life_x,Life_y);
  }
  
  void LifeCheck(){
    drawLife();
  }
}
