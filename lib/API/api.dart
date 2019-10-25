import 'dart:async';
import 'package:http/http.dart';
import 'package:thecocktail/model/search_model.dart';

// const baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita";

class Api {
  static Future<Drink> getDrinks(String drinks) async {
    String query = 'q=$drinks';
    Response response = await get('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita?$query');
    return drinkFromJson(response.body); 
  }
}


