import 'package:flutter/material.dart';
import 'package:thecocktail/API/api.dart';
import 'package:thecocktail/model/search_model.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController editingController = TextEditingController();
  bool onSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //   margin: EdgeInsets.only(top: 20),
      //   padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      //   decoration:  BoxDecoration(
      //     color: Colors.black38.withAlpha(10),
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(20),
      //   ),
      // ),
          title: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search drink",
                  hintStyle: TextStyle(
                    color: Colors.black.withAlpha(120),
                  ),
                  border: InputBorder.none, 
                ),
              ),
         
            ),
            
              IconButton(
                icon: Icon(
                Icons.search,
                color: Colors.black.withAlpha(120),
              ),
              onPressed: () {
                setState(() {
                 onSearch = true; 
                });
              },
            ),
           
          ],
        
        ),
        
        
      ),
      body:  onSearch ? SearchContent(editingController.text) : Container(),
      
      
    );
  }
}

class SearchContent extends StatelessWidget {
  final String drinks;

  SearchContent(this.drinks);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Drink>(
        future: Api.getDrinks(drinks),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          Drink drink = snapshot.data;
          bool connect = snapshot.connectionState == ConnectionState.done;
          if (snapshot.hasData && connect) {
            return ListView.builder(
              itemCount: drink.strDrink.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(drink.strDrink[index]),
                  onTap: () {
                    SnackBar snackbar = SnackBar(
                      content: Text(
                        drink.strDrink[index],
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackbar);
                  },
                );
              },
            );
            
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}