class Button{
  /* varibales for button */
  private float buttonSizeX;
  private float buttonSizeY;
  private float buttonPositionX;
  private float buttonPositionY;
  private float buttonR;
  private float buttonG;
  private float buttonB;
  private float buttonA;

  /* variables for text */
  private String text;
  private int textSize;
  private float textPositionX;
  private float textPositionY;
  private float textR;
  private float textG;
  private float textB;
  private float textA;

  Button(float buttonPositionX, float buttonPositionY, float buttonSizeX, float buttonSizeY, String text
    ){
      setButtonPositionX(buttonPositionX);
      setButtonPositionY(buttonPositionY);
      setButtonSizeX(buttonSizeX);
      setButtonSizeY(buttonSizeY);
      setButtonR(255);
      setButtonG(255);
      setButtonB(255);
      setButtonA(255);

      setText(text);
      setTexetSize(48);
      setTextPositionX(buttonPositionX);
      setTextPositionY(buttonPositionY);
      setTextR(0);
      setTextG(0);
      setTextB(0);
      setTextA(255);
  }
  void drawButton(){
    /* draw button shape*/
    fill(getButtonR(), getButtonG(), getButtonB(), getButtonA());
    noStroke();
    rect(getButtonPositionX(), getButtonPositionY(), getButtonSizeX(), getButtonSizeY(),20);

    /* draw text in button */
    textSize(getTextSize());
    fill(getTextR(), getTextG(), getTextB(), getTextA());
    text(getText(), getTextPositionX(), getTextPositionY());

    /* set default color to white */
    fill(255);
  }

  /* return true if mouse is on the button */
  boolean checkClick(){
    if(getButtonPositionX() <= mouseX && mouseX <= getButtonPositionX() + getButtonSizeX() && getButtonPositionY() <= mouseY && mouseY <= getButtonPositionY()+getButtonSizeY()){
      return true;
    }
    else return false;
  }

  /* getter */
  float getButtonSizeX(){
    return buttonSizeX;
  }
  float getButtonSizeY(){
    return buttonSizeY;
  }
  float getButtonPositionX(){
    return buttonPositionX;
  }
  float getButtonPositionY(){
    return buttonPositionY;
  }
  float getButtonR(){
    return buttonR;
  }
  float getButtonG(){
    return buttonG;
  }
  float getButtonB(){
    return buttonB;
  }
  float getButtonA(){
    return buttonA;
  }
  String getText(){
    return text;
  }
  int getTextSize(){
    return textSize;
  }
  float getTextPositionX(){
    return textPositionX;
  }
  float getTextPositionY(){
    return textPositionY;
  }
  float getTextR(){
    return textR;
  }
  float getTextG(){
    return textG;
  }
  float getTextB(){
    return textB;
  }
  float getTextA(){
    return textA;
  }
  /* setter */
  void setButtonSizeX(float buttonSizeX){
    this.buttonSizeX = buttonSizeX;
  }
  void setButtonSizeY(float buttonSizeY){
    this.buttonSizeY = buttonSizeY;
  }
  void setButtonPositionX(float buttonPositionX){
    this.buttonPositionX = buttonPositionX;
  }
  void setButtonPositionY(float buttonPositionY){
    this.buttonPositionY = buttonPositionY;
  }
  void setButtonR(float buttonR){
    this.buttonR = buttonR;
  }
  void setButtonG(float buttonG){
    this.buttonG = buttonG;
  }
  void setButtonB(float buttonB){
    this.buttonB = buttonB;
  }
  void setButtonA(float buttonA){
    this.buttonA = buttonA;
  }
  void setText(String text){
    this.text = text;
  }
  void setTexetSize(int textSize){
    this.textSize = textSize;
  }
  void setTextPositionX(float textPositionX){
    this.textPositionX = textPositionX;
  }
  void setTextPositionY(float textPositionY){
    this.textPositionY = textPositionY;
  }
  void setTextR(float textR){
    this.textR = textR;
  }
  void setTextG(float textG){
    this.textG = textG;
  }
  void setTextB(float textB){
    this.textB = textB;
  }
  void setTextA(float textA){
    this.textA = textA;
  }
}
