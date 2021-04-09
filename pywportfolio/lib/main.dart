import 'package:flutter/material.dart';

import './myhomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.deepOrange,
        fontFamily: 'Arno',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Piyawit\'s Portfolio',
      routes: {
        '/': (ctx) => MyHomePage(),
      },
    );
  }
}
