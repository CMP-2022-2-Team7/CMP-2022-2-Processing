class Object{
  float x,y = 0;
  
  PImage objImage;
  PImage effect;
  
  Object(){
    x = width/2;
    y = height/2 + 130;
    objImage = loadImage("player.png");
    effect = loadImage("effect.png");
    
  }
  
  //플레이어 그리기
  void drawObject(){
    image(objImage,x,y);
  }
  
  //충돌시 이펙트 그리기
  void drawEffect(){
    image(effect,x+10,y-10);
  }
}
