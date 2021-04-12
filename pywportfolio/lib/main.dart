import 'package:flutter/material.dart';

import 'screens/scn_home.dart';
import 'screens/scn_story.dart';
import './screens/scn_contact.dart';

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
        '/': (ctx) => ScnHome(),
        '/story': (ctx) => ScnStory(),
        '/contact': (ctx) => ScnContact(),
      },
    );
  }
}
