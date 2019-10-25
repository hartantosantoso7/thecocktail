
import 'package:flutter/material.dart';
import 'package:thecocktail/model/about_model.dart';
import 'package:thecocktail/model/data_about.dart';
import 'package:thecocktail/component/list_about.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
              child: Column(
          
          children: ABOUT_DATA.map((about) => ListAbout(about.id, about.name, about.image, about.description)).toList(),
        ),
      )
      );
  }
}