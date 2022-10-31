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
  
  //Draw Player
  void drawObject(){
    image(objImage,x,y);
  }
  
  //Draw effects in case of collision
  void drawEffect(){
    image(effect,x+10,y-10);
  }
}
