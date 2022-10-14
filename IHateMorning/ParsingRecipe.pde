class ParsingRecipe{
  Table table;    // Variable for storing recipes
  ArrayList<String> dishNameList;    // Variable for storing dish name

  ParsingRecipe(){
    table = loadTable("recipe-stage2.csv", "header");
    println("Total numbers of dishes in table : " + table.getRowCount());
    dishNameList = new ArrayList<String>();
  }

  String printDishName(String category){
    int random;
    dishNameList.clear();
    for(TableRow row : table.rows()){
      if(row.getString("유형분류").equals(category)){
        dishNameList.add(row.getString("레시피 이름"));
      }
    }
    println(dishNameList.size());
    return dishNameList.get(round(random(0, dishNameList.size()-1)));
  }
}
