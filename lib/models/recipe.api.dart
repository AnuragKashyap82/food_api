import 'dart:convert';
import 'package:food_api/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "3af099b384msh866eb91f8defd5dp1bc731jsn5fa78d586e04",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}