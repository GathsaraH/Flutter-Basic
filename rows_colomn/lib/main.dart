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
      ThemeData(
          brightness: Brightness.dark
      )
      ,
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
        title: Text('Flutter Rows &  Column'),
      ),
      body: Container(
        color: Colors.lightGreen,
        // width: 300,
        height: 400,
        //Column or Rows
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Text(
               "Test 1",
             style: TextStyle(
               fontSize: 20
             ),
           ),
           Text(
             "Test 1",
             style: TextStyle(
                 fontSize: 20
             ),
           ),
           Text(
             "Test 1",
             style: TextStyle(
                 fontSize: 20
             ),
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                 "Test 1",
                 style: TextStyle(
                     fontSize: 20
                 ),
               ),
               Text(
                 "Test 1",
                 style: TextStyle(
                     fontSize: 20
                 ),
               ),
               Text(
                 "Test 1",
                 style: TextStyle(
                     fontSize: 20
                 ),
               ),
             ],
           )
         ],
        ),
      )
    );
  }
}
