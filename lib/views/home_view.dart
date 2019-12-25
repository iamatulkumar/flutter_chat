import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_chat/widgets/category_selector.dart';
import 'package:flutter_chat/widgets/favorite_contact.dart';
import 'package:flutter_chat/widgets/recent_chats.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: () {}),
          title: Text(
            'Marvel Chat',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
                child: Column(
                  children: <Widget>[
                    FavoriteContact(),
                    RecentChats(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
