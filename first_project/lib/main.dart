import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Zenixo Test App"),
        ),
        body: Center(
          child: Text("Hello Child",
          style: TextStyle(fontSize: 20)),
        ),
      )
    );
  }
}
