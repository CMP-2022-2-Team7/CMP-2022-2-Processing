class object{
  int x,y = 0;
  int direction;
  
  PImage obj_image;
  
  object(){
    x = width/2;
    y = height/2 + 100;
    direction = 0;
    obj_image = loadImage("bag_man.png");
    
  }
  
  
  
  void drawobj(){
    image(obj_image,x,y);
  }
}
