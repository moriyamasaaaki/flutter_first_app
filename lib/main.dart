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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
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
                fontSize: 23.0,
                color: Colors.white70,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 20.0,
              child: Divider(
                color: Colors.blue.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    '080-1234-5678',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueAccent.shade700,
                        fontFamily: 'Lobster'),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'flutter@email.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueAccent.shade700,
                        fontFamily: 'Lobster'),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}

// This widget is the root of your application.
