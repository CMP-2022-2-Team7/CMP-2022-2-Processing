class Scene2{
  /* variables for creating option */
  ArrayList<String> ingredientList;
  ParsingRecipe parsingRecipe;

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

  /* Variable for checking which button is clicked */
  boolean button1Clicked;
  boolean button2Clicked;
  boolean button3Clicked;

  /* Dish button */
  Button dishButton1;
  Button dishButton2;
  Button dishButton3;

  Scene2(){
    /* load background image */
    background = loadImage("kitchen-stage2.jpg");

    /* make ingredient list and add ingredient that user choose */
    ingredientList = new ArrayList<String>();
    ingredientList.add("Korea food");
    ingredientList.add("Fusion food");
    ingredientList.add("Italian food");
    ingredientList.add("Chinese food");
    ingredientList.add("Western food");
    ingredientList.add("Japanese food");
    pickIngredient();

    /* set ingredient button specifications */
    ingredientSizeX = 200;
    ingredientSizeY = 70;
    ingredient1PositionX = width/3*0.5-100;
    ingredient2PositionX = width/3*1.5-100;
    ingredient3PositionX = width/3*2.5-100;
    ingredientPositionY = 250;

    /* generate ingredient button and set specification */
    ingredientButton1 = new Button(ingredient1PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, ingredientList.get(0));
    ingredientButton1.setTextPositionX(ingredient1PositionX+100);
    ingredientButton1.setTextPositionY(ingredientPositionY+50);
    ingredientButton1.setTexetSize(30);

    ingredientButton2 = new Button(ingredient2PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, ingredientList.get(1));
    ingredientButton2.setTextPositionX(ingredient2PositionX+100);
    ingredientButton2.setTextPositionY(ingredientPositionY+50);
    ingredientButton2.setTexetSize(30);

    ingredientButton3 = new Button(ingredient3PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, ingredientList.get(2));
    ingredientButton3.setTextPositionX(ingredient3PositionX+100);
    ingredientButton3.setTextPositionY(ingredientPositionY+50);
    ingredientButton3.setTexetSize(30);

    /* generate result button and set specification */
    dishButton1 = new Button(width/2-100, 100, 200, 100, "button1 clicked");
    dishButton1.setTextPositionX(width/2);
    dishButton1.setTextPositionY(150);
    dishButton2 = new Button(width/2-100, 100, 200, 100, "button2 clicked");
    dishButton2.setTextPositionX(width/2);
    dishButton2.setTextPositionY(150);
    dishButton3 = new Button(width/2-100, 100, 200, 100, "button3 clicked");
    dishButton3.setTextPositionX(width/2);
    dishButton3.setTextPositionY(150);

    parsingRecipe = new ParsingRecipe();

    button1Clicked = false;
    button2Clicked = false;
    button3Clicked = false;
  }
  void drawScene2(){
    /* clear sceen */
    image(background, 0, 0, width, height);
    ingredientButton1.drawButton();
    ingredientButton2.drawButton();
    ingredientButton3.drawButton();
    pickIngredient();
  }

  /* pick ingredient option randomly */
  void pickIngredient(){
    if(button1Clicked){
        dishButton1.drawButton();
    }
    else if(button2Clicked){
        dishButton2.drawButton();
    }
    else if(button3Clicked){
        dishButton3.drawButton();
    }
  }
}
