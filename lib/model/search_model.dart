// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Drink drinkFromJson(String str) => Drink.fromJson(json.decode(str));

String drinkToJson(Drink data) => json.encode(data.toJson());

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
