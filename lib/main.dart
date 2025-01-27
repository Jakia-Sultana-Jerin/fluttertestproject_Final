import 'package:flutter/material.dart';

import 'package:fluttertestproject/screen/ToDo.dart'; // Import ToDo screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      title: 'Task Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ToDo(), // Set initial screen to ToDo

    );
  }
}
