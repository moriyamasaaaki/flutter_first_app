import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage:
                  AssetImage('images/conference-room-768441_1920.jpg'),
            ),
            Text(
              'Masaaki Moriya',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Web Frontend Enginner',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '080-1234-5678',
                    style: TextStyle(
                      color: Colors.blueAccent.shade700,
                      fontFamily: 'Lobster',
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'flutter@email.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueAccent.shade700,
                        fontFamily: 'Lobster'),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// This widget is the root of your application.
