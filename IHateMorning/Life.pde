class Life{
  PImage life;
  int lifex;
  int lifey;
  
  Life(int x){
    life = loadImage("Life.png");
    lifex = x;
    lifey = 10;
  }
  
  //라이프 그리기
  void drawLife(){
      image(life,lifex,lifey);
  }
  
  //라이프 체크
  void lifeCheck(){
    drawLife();
  }
}
