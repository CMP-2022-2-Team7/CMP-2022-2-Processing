class Scene2{
  /* variables for creating option */
  ArrayList<String> ingredientList;
  ParsingRecipe parsingRecipe;    // Object for parisng csv file

  /* variables for ingredient option button */
  int ingredientSizeX; // ingredient button's X-axis size
  int ingredientSizeY; // ingredient button's Y-axis size
  float ingredient1PositionX;    // ingredient1 button's position X
  float ingredient2PositionX;    // ingredient2 button's position X
  float ingredient3PositionX;    // ingredient3 button's position X
  int ingredientPositionY; // ingredient button's position Y

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
  Button dishButton;
  Button calorieButton;

  /* Variable for print dish name */
  boolean setCategory;
  PFont stage2Font;    // Font for dish name

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
    dishButton = new Button(ingredient1PositionX, ingredientPositionY-200, ingredientSizeX, ingredientSizeY, "button1 clicked");
    dishButton.setTextPositionX(ingredient1PositionX+100);
    dishButton.setTextPositionY(ingredientPositionY-150);
    dishButton.setTexetSize(30);

    calorieButton = new Button(ingredient3PositionX, ingredientPositionY-200, ingredientSizeX, ingredientSizeY, "button1 clicked");
    calorieButton.setTextPositionX(ingredient3PositionX+100);
    calorieButton.setTextPositionY(ingredientPositionY-150);
    calorieButton.setTexetSize(30);

    parsingRecipe = new ParsingRecipe();

    button1Clicked = false;
    button2Clicked = false;
    button3Clicked = false;

    setCategory = false;
    stage2Font = createFont("NanumGothicBold.otf", 28);
    textFont(stage2Font);
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
        dishButton.drawButton();
        calorieButton.drawButton();
    }
    else if(button2Clicked){
        dishButton.drawButton();
        calorieButton.drawButton();
    }
    else if(button3Clicked){
        dishButton.drawButton();
        calorieButton.drawButton();
    }
  }
  void pickDish(){
    setCategory = true;
    if(setCategory){
      if(button1Clicked){
        dishButton.setText(parsingRecipe.printDishName("한식"));
        calorieButton.setText(parsingRecipe.dishHashMap.get(parsingRecipe.dishName));
      }
      else if(button2Clicked){
        dishButton.setText(parsingRecipe.printDishName("퓨전"));
        calorieButton.setText(parsingRecipe.dishHashMap.get(parsingRecipe.dishName));
      }
      else if(button3Clicked){
        dishButton.setText(parsingRecipe.printDishName("이탈리아"));
        calorieButton.setText(parsingRecipe.dishHashMap.get(parsingRecipe.dishName));
      }
    }
    setCategory = false;
  }
}
