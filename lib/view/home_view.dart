
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:thecocktail/API/api.dart';
import 'package:thecocktail/model/search_model.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
    List datadariJSON;

    Future ambilData() async {
      http.Response  hasil = await http.get(
        Uri.encodeFull("https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a"),
        headers: {"Accept": "application/json"});

    //   this.setState(() {
    //     datadariJSON = json.decode(hasil.body);
    //   });
    // }

    // @override
    // void initState() {
    //   this.ambilData();
    // }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
       child: ListView.builder(
            itemCount: datadariJSON == null ? 0 :datadariJSON.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(datadariJSON[i]['strDrink']),
              );
            },
          ),
        ),
    );
      }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}