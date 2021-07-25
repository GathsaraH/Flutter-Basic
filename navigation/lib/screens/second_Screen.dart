import 'package:flutter/material.dart';
import 'package:navigation/screens/HomePage.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  String text = '';

  SecondScreen.withA(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context, MyHomePage);
            }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
