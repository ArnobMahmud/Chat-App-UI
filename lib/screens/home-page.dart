import 'package:chat_ui/widgets/category-selector.dart';
import 'package:chat_ui/widgets/favourite_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Chat UI",
          style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  color: Theme.of(context).accentColor),
              child: Column(
                children: [
                  FavouriteContacts(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
