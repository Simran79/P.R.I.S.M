import 'package:PRISM/home_page.dart';
import 'package:PRISM/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  static const String id = "login";
  @override
  Widget build(BuildContext context) {
    String email;
    String pswd;
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFa184db),
              Color(0xff9dd2f6),
              Color(0xFF96d4ca),
            ],
            stops: [0, 0.5, 0.97],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Center(
              child: Text('P.R.I.S.M',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Hero(
                    tag: 'hero1',
                    child: Container(
                      height: 220,
                      child: Image.asset('assets/images/Prism2.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 375,
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Card(
                            elevation: 2,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: TextFormField(
                                onChanged: (value) {
                                  email = value;
                                },
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Card(
                            elevation: 2,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: TextFormField(
                                obscureText: true,
                                onChanged: (value) {
                                  pswd = value;
                                },
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 190,
                      height: 60,
                      child: FlatButton(
                          onPressed: () async {
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email, password: pswd);
                              if (user != null) {
                                print(email);
                                print(pswd);
                                Navigator.of(context)
                                    .pushNamed(HomePage.routeName);
                              }
                            } catch (e) {
                              print(e.message);
                              Alert(
                                  context: context,
                                  title: 'Invalid Credentials',
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      color: Colors.white38,
                                      width: 120,
                                      height: 30,
                                    ),
                                  ]).show();
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          color: Colors.white),
                    ),
                    Container(
                      // width: 100,
                      child: FlatButton(
                        padding: EdgeInsets.all(2.0),
                        onPressed: () {},
                        child: Text('Forgot Password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                      ),
                    ),
                  ],
                ),
                Container(
                  // decoration: BoxDecoration(color: Colors.blue, ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: 60,
                        child: FlatButton(
                          padding: EdgeInsets.all(2.0),
                          onPressed: () {
                            Navigator.pushNamed(context, Signup.id);
                          },
                          child: Text('Sign Up',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
