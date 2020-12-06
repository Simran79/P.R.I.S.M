import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:PRISM/signup.dart';
import 'package:flutter/material.dart';
import './login.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  Widget button(String btext, String navito, ctx) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(12),
      child: MaterialButton(
        height: 60,
        onPressed: () {
          Navigator.pushNamed(ctx, navito);
        },
        child: Text(
          btext,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'hero1',
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Image.asset(
                    "assets/images/Prism2.png",
                  ),
                ),
              ),
            ),
            Flexible(
              child: RotateAnimatedTextKit(
                duration: Duration(seconds: 3),
                text: [
                  'Projects',
                  'Recruitments',
                  'Internships',
                  'Skills',
                  'Mentorships'
                ],
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
          child: button('Login', Login.id, context),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
          child: button('SignUp', Signup.id, context),
        ),
      ],
    );
  }
}
