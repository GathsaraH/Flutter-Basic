import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController title=TextEditingController();

  @override
  Widget build(BuildContext context) {
    title.text="Gathsara";
    String test=title.text;
    return Scaffold(
      appBar: AppBar(
        title: TextField(
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 20,
                cursorColor: Colors.amber,
                // obscureText: true,
                // enabled: false,
                onChanged: (text){
                  print(text);
                },
                controller: title,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search)
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 22.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                autofocus: true,
                maxLength: 20,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 22.0
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
