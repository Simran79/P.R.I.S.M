import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import './home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatelessWidget {
  static const String id = 'signup';
  final _auth = FirebaseAuth.instance;
  String email;
  String pswrd;
  String confirmPD;
  @override
  Widget build(BuildContext context) {
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
              children: <Widget>[
                SizedBox(
                  height: 40,
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
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (val) {
                      email = val;
                    },
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (val) {
                      pswrd = val;
                    },
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (val) {
                      confirmPD = val;
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  child: MaterialButton(
                    minWidth: 170,
                    onPressed: () async {
                      // final bool isValid = EmailValidator.validate(email);
                      // if (isValid)
                      //   print("valid");
                      // else
                      //   print('invalid email');
                      print(email);
                      print(pswrd);
                      if (confirmPD == pswrd && pswrd != null) {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: pswrd);
                          if (newUser != null) {
                            Navigator.of(context).pushNamed(HomePage.routeName);
                          }
                        } catch (e) {
                          print(e);
                        }
                      } else if (pswrd == null || email == null) {
                        Alert(
                            context: context,
                            title: 'Null Fields are not allowed.',
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
                      } else {
                        Alert(
                            context: context,
                            title: 'Password do not Match',
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
                    child: Text('Register'),
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
