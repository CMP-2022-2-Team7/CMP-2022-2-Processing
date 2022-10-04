class Scene2{
  /* variables for ingredient that user choose */
  ArrayList<String> ingredientList;
  String randomIngredient1; // ingredient option 1
  String randomIngredient2; // ingredient option 2
  String randomIngredient3; // ingredient option 3

  /* variables for ingredient option button */
  int ingredientSizeX; // ingredient1 button's X-axis size
  int ingredientSizeY; // ingredient1 button's Y-axis size
  float ingredient1PositionX; // ingredient1 button's position X
  float ingredient2PositionX;
  float ingredient3PositionX;
  int ingredientPositionY; // ingredient1 button's position Y

  /* variable for drawing background */
  PImage background;

  /* ingredient buttons */
  Button ingredientButton1;
  Button ingredientButton2;
  Button ingredientButton3;

  Scene2(){
    /* load background image */
    background = loadImage("kitchen-stage2.jpg");

    /* make ingredient list and add ingredient that user choose */
    ingredientList = new ArrayList<String>();
    ingredientList.add("egg");
    ingredientList.add("meat");
    ingredientList.add("rice");
    ingredientList.add("milk");
    ingredientList.add("noodle");
    ingredientList.add("fish");
    pickIngredient();

    /* set ingredient button specifications */
    ingredientSizeX = 200;
    ingredientSizeY = 70;
    ingredient1PositionX = width/3*0.5-100;
    ingredient2PositionX = width/3*1.5-100;
    ingredient3PositionX = width/3*2.5-100;
    ingredientPositionY = 250;

    /* generate ingredient button and set specification */
    ingredientButton1 = new Button(ingredient1PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, randomIngredient1);
    ingredientButton1.setTextPositionX(ingredient1PositionX+100);
    ingredientButton1.setTextPositionY(ingredientPositionY+50);

    ingredientButton2 = new Button(ingredient2PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, randomIngredient2);
    ingredientButton2.setTextPositionX(ingredient2PositionX+100);
    ingredientButton2.setTextPositionY(ingredientPositionY+50);

    ingredientButton3 = new Button(ingredient3PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, randomIngredient3);
    ingredientButton3.setTextPositionX(ingredient3PositionX+100);
    ingredientButton3.setTextPositionY(ingredientPositionY+50);
  }
  void drawScene2(){
    /* clear sceen */
    image(background, 0, 0, width, height);
    ingredientButton1.drawButton();
    ingredientButton2.drawButton();
    ingredientButton3.drawButton();
  }

  /* pick ingredient option randomly */
  void pickIngredient(){
    int randomNum = round(random(0, 4));
    randomIngredient1 = ingredientList.get(randomNum);
    randomNum = round(random(0, 4));
    randomIngredient2 = ingredientList.get(randomNum);
    randomNum = round(random(0, 4));
    randomIngredient3 = ingredientList.get(randomNum);
  }
}
