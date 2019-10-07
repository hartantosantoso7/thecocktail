import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'home_view.dart';
import 'profile_dart.dart';
import 'search_view.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Cock Tail"),
        bottom: _buildTabBar()
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          ProfilePage(),
        ],
      ),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home),
          text: "Drink",
        ),
        Tab(
          icon: Icon(Icons.search),
          text: "Search",
        ),
        Tab(
          icon: Icon(Icons.person),
          text: "About",
        )
      ],
    );
  }
}