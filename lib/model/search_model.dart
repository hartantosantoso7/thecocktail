// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

DrinkNames drinkNamesFromJson(String str) => DrinkNames.fromJson(json.decode(str));

String drinkNamesToJson(DrinkNames data) => json.encode(data.toJson());


class DrinkNames {
  List<Drink> drinks;

  DrinkNames({  
    this.drinks,
  });

  factory DrinkNames.fromJson(Map<String, dynamic> json) => DrinkNames(
    drinks: List<Drink>.from(json['drinks'].map((x) => Drink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "drinks" : List<dynamic>.from(drinks.map((x) => x.toJson())),
  };
}

class Drink {
    String strDrinkThumb;
    String idDrink;
    String strDrink;

    Drink({
        this.strDrinkThumb,
        this.idDrink,
        this.strDrink,
    });

    factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        strDrinkThumb: json["strDrinkThumb"],
        idDrink: json["idDrink"],
        strDrink:json["strDrink"],
    );

    Map<String, dynamic> toJson() => {
        "strDrink": strDrink,
        "strDrinkThumb": strDrinkThumb,
        "idDrink": idDrink,
    };
}
