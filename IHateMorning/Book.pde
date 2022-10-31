class Book{
  float bookX, bookY = 0;
  float drawBookX, drawBookY = 0;
  
  PImage book;
  
  Book(){
    book = loadImage("book.png");
    bookX = width/2;
    bookY = height/2 + 130;
  }
  
  Book(float x){
    book = loadImage("book2.png");
    drawBookX = x;
    drawBookY = 40;
  }
  
  //Drawing a book throwing
  void throwBook(){
    image(book,bookX,bookY);
  }
  
  //Drawing a book
  void drawBook(){
    image(book,drawBookX,drawBookY);
  }
}
