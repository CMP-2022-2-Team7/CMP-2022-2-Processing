class Scene2{
  /* Variable for checking stage */
  int scene2Checking;

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
  PImage mom;

  /* Button for divide screen */
  Button divideButton;

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

  /* Decision button */
  Button yesButton;
  Button noButton;

  /* Variable for print dish name */
  boolean setCategory;
  PFont stage2Font;    // Font for dish name

  /* Phase in scene 2 */
  boolean phase1;    // Show categories
  boolean phase2;    //
  boolean phase3;

  Scene2(){
    /* Initialize scene checking */
    scene2Checking = 0;
    /* load background image */
    background = loadImage("kitchen-stage2.jpg");
    mom = loadImage("mom-stage2.png");

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
    ingredientPositionY = 350;

    /* Generate divide button and set specification */
    divideButton = new Button(0,ingredientPositionY-30,width, 330, "");
    divideButton.setButtonR(130);
    divideButton.setButtonG(190);
    divideButton.setButtonB(255);

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
    dishButton = new Button(30, 30, 370, 260, "Good Morning!\nPick the category \nyou want to eat");
    dishButton.setTextPositionX((30+370)/2+10);
    dishButton.setTextPositionY((30+260)/2);
    dishButton.setTexetSize(25);

    /* Generate decision button and set specification */
    yesButton = new Button(ingredient1PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, "YES");
    yesButton.setTextPositionX(ingredient1PositionX+100);
    yesButton.setTextPositionY(ingredientPositionY+50);
    yesButton.setTexetSize(30);

    noButton = new Button(ingredient3PositionX,ingredientPositionY,ingredientSizeX, ingredientSizeY, "NO");
    noButton.setTextPositionX(ingredient3PositionX+100);
    noButton.setTextPositionY(ingredientPositionY+50);
    noButton.setTexetSize(30);

    parsingRecipe = new ParsingRecipe();

    button1Clicked = false;
    button2Clicked = false;
    button3Clicked = false;

    setCategory = false;
    stage2Font = createFont("NanumGothicBold.otf", 28);
    textFont(stage2Font);

    /* Set phase boolean variables */
    phase1 = true;
    phase2 = false;
    phase3 = false;
  }
  void drawScene2(){
    /* clear sceen */
    image(background, 0, 0, width, height);
    image(mom, 400, 0, width/2, height/1.5);
    divideButton.drawButton();

    /* Pick categories */
    if(phase1){
      ingredientButton1.drawButton();
      ingredientButton2.drawButton();
      ingredientButton3.drawButton();
      dishButton.drawButton();
    }
    if(phase2){
      yesButton.drawButton();
      noButton.drawButton();
      dishButton.drawButton();
    }
  }

  /* pick ingredient option randomly */
  void pickIngredient(){
    if(button1Clicked){
        dishButton.drawButton();
    }
    else if(button2Clicked){
        dishButton.drawButton();
    }
    else if(button3Clicked){
        dishButton.drawButton();
    }
  }
  void pickCategory(){
    setCategory = true;
    if(setCategory){
      if(button1Clicked){
        dishButton.setText("Do you want \n" + parsingRecipe.printDishName("한식") +"? \nIt is " + parsingRecipe.dishHashMap.get(parsingRecipe.dishName) +"kcal.");
        phase1 = false;
        phase2 = true;
      }
      else if(button2Clicked){
        dishButton.setText("Do you want \n" + parsingRecipe.printDishName("퓨전") +"? \nIt is " + parsingRecipe.dishHashMap.get(parsingRecipe.dishName) +"kcal.");
        phase1 = false;
        phase2 = true;
      }
      else if(button3Clicked){
        dishButton.setText("Do you want \n" + parsingRecipe.printDishName("이탈리아") +"? \nIt is " + parsingRecipe.dishHashMap.get(parsingRecipe.dishName) +"kcal.");
        phase1 = false;
        phase2 = true;
      }
    }
    setCategory = false;
  }
}
