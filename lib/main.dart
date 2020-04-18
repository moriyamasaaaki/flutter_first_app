import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/conference-room-768441_1920.jpg'),
          ),
        ),
      ),
    ),
  );
}

// This widget is the root of your application.
