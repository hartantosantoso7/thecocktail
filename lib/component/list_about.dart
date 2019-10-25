import 'package:flutter/material.dart';

class ListAbout extends StatelessWidget {

  final String id;
  final String name;
  final String image;
  final String description;

  ListAbout(this.id, this.name, this.image, this.description);

  // void goToDetail(BuildContext context) {

  // }
  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),

          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(),
                child: ListTile(
                  leading: Image.asset(image),
                  title: Text(name),
                ),
              )
            ],
          ),
          // child: ListTile(
          //   leading: Image.asset(image),
          //   title: Text(name),
          //   subtitle: Text(description.substring(0, 100) + '...'),
          //   // onTap: () => goToDetail(context),
          // ),
        ),
        
      ),
    );
  }
}