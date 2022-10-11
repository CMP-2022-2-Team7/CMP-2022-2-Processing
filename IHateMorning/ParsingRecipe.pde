class ParsingRecipe{
  Table table;    // Variable for storing recipes

  ParsingRecipe(){
    table = loadTable("recipe-stage2.csv", "header");
    println("Total numbers of dishes in table : " + table.getRowCount());
  }

  void printDishName(){
    for(TableRow row : table.rows()){
      String dishName = row.getString("레시피 이름");
      println("요리이름 " + row + " " + dishName);
    }
  }
}
