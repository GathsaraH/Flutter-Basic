import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ListView & ListTitle'),
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
  var item = List<String>.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(item[index]),
            );
          },
        ));
  }

//-----------------------------------------------------------------

// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         height: 350,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.white,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.grey,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.orange,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.white,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.orange,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.white,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.orange,
//             ),
//           ],
//         ),
//       ));
// }

//--------------------------------------------------------------------------------

// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.brightness_auto),
//               title: Text("Brightness Auto"),
//               subtitle: Text("Change the Brightness"),
//               trailing: Icon(Icons.menu),
//               onTap: () {},
//               onLongPress: () {},
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.ac_unit),
//               title: Text("Brightness Auto"),
//               subtitle: Text("Change the Brightness"),
//               trailing: Icon(Icons.menu),
//               onTap: () {},
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.image_aspect_ratio),
//               title: Text("Brightness Auto"),
//               subtitle: Text("Change the Brightness"),
//               trailing: Icon(Icons.menu),
//               onTap: () {},
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text("Brightness Auto"),
//               subtitle: Text("Change the Brightness"),
//               trailing: Icon(Icons.menu),
//               onTap: () {},
//             ),
//             Divider(),
//             Container(
//               height: 200,
//               color: Colors.white,
//             ),
//             Container(
//               height: 200,
//               color: Colors.grey,
//             ),
//             Container(
//               height: 200,
//               color: Colors.orange,
//             ),
//           ],
//         ),
//       ));
// }
}
