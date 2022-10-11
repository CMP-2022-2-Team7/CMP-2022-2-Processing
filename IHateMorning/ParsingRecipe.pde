class ParsingRecipe{
  PFont font;
  Table table;

  ParsingRecipe(){
    table = loadTable("recipe-stage2.csv", "header");
    println("Total rows in table : " + table.getRowCount());
    //font = createFont("NanumGothicBold", 16);
    String[] list = PFont.list();
    printArray(list);
    //textFont(font);
    text("테스트", 200, 200);
  }

  void printDishName(){
    for(TableRow row : table.rows()){
      String dishName = row.getString("레시피 이름");
      println("요리이름 " + row + " " + dishName);
    }
  }
}
