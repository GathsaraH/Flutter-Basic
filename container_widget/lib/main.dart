import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.orange),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Container Widget'),
      ),
      body: Container(
        width: double.infinity ,
        // height: 200.0,
        // margin: EdgeInsets.all(20.0),
        // padding: EdgeInsets.all(50.0),
        // padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 100),
        // padding: EdgeInsets.only(top: 150,bottom: 100),
        // alignment: Alignment.bottomLeft,
        transform: Matrix4.rotationZ(0.2),
        color: Colors.pinkAccent,
        child: Text("Flutter Container Widget",
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
      ),
    );
  }
}
