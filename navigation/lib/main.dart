import 'package:flutter/material.dart';
import 'package:navigation/screens/second_Screen.dart';

import 'screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Navigation'),
      routes: <String, WidgetBuilder>{
        '/second': (context) => SecondScreen(),
      },
    );
  }
}
