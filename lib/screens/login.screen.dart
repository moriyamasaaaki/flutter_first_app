import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import 'package:flutterfirstapp/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat.screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool sohwSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: sohwSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
//                child: Hero(
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/conference-room-768441_1920.jpg'),
                ),
//                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFiledDecoration.copyWith(hintText: 'メールアドレス'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFiledDecoration.copyWith(hintText: 'パスワード'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                title: 'ログイン',
                color: Colors.teal,
                onPressed: () async {
                  setState(() {
                    sohwSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                    setState(() {
                      sohwSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
