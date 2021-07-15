import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          leading: IconButton(
              onPressed: () => {log("message")}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () => {log("message")}, icon: Icon(Icons.search)),
            IconButton(
                onPressed: () => {log("message")}, icon: Icon(Icons.more_vert)),
          ],
          flexibleSpace: Image.asset(
            'assets/back.jpeg',
            fit: BoxFit.cover,
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: "Cars",),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 18.0,
          backgroundColor: Colors.pink,
        ),
        body: TabBarView(
          children: [
            // Icon(Icons.directions_car),
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}


Widget tab1(){
  return Container(
    child: Center(
      child: Text("Test"),
    ),
  );
}