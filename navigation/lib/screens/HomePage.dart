import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/screens/second_Screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Flutter Navigation',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Within the `FirstRoute` widget
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );

          //Using RouteTable
          // Navigator.of(context).pushNamed('/second');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
