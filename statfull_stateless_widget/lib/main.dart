import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(App());
}

//ShortCut

//stl
//stf

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "About State",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count = count + 1;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About State"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have pushed button times",
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              "$count",
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   int count = 0;
//
//   void increment() {
//     count = count + 1;
//     print(count);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("About State"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "You have pushed button times",
//               style: TextStyle(fontSize: 25.0),
//             ),
//             Text(
//               "$count",
//               style: Theme.of(context).textTheme.display1,
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: increment,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
