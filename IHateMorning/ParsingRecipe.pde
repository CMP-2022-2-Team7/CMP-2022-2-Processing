import java.util.Map;

class ParsingRecipe{
  Table table;    // Variable for storing recipes
  ArrayList<String> dishNameList;    // Variable for storing dish name
  HashMap<String, String> dishHashMap;    // Variable for storing calrorie
  String dishName;
  String kcal;

  ParsingRecipe(){
    table = loadTable("recipe-stage2.csv", "header");
    println("Total numbers of dishes in table : " + table.getRowCount());
    dishNameList = new ArrayList<String>();
    dishHashMap = new HashMap<String, String>();
  }

  String printDishName(String category){
    int random;
    String[] tmpDishNameList;
    ArrayList<Character> charArrayList;
    dishNameList.clear(); 
    for(TableRow row : table.rows()){
      charArrayList = new ArrayList<Character>();
      if(row.getString("유형분류").equals(category)){
        dishNameList.add(row.getString("레시피 이름"));

        /* Make ArrayList contains only numbers */
        for(int i=0; i<row.getString("칼로리").length(); i++){
          if(row.getString("칼로리").charAt(i) == 'K'){
            break;
          }
          charArrayList.add(row.getString("칼로리").charAt(i));
        }
        /* Make ArrayList to Array of Char */
        char charArray[] = new char[charArrayList.size()];
        for(int i=0; i<charArrayList.size(); i++){
          charArray[i] = charArrayList.get(i);
        }
        kcal = new String(charArray);
      }
      dishHashMap.put(row.getString("레시피 이름"), kcal);
    }
    for(Map.Entry i : dishHashMap.entrySet()){
      print(i.getKey());
      println(i.getValue());
    }
    //println(dishNameList.size());    // print numbers of dishes have category that user choosed
    dishName = dishNameList.get(round(random(0, dishNameList.size()-1)));
    return dishName;
  }
}
