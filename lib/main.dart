
import 'package:flutter/material.dart';
import 'package:flutter_chat/views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        primaryColorDark: Colors.red,
        accentColor: Color(0xFFFEF9EB)
      ),
      home: HomeView(),
    );
  }
}