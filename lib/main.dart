import 'package:PRISM/MyInfo.dart';
import 'package:PRISM/mentoscreen.dart';

import './home_page.dart';
import './signup.dart';
import './skill.dart';
import 'package:flutter/material.dart';
import './welcome_screen.dart';
import './login.dart';
import './project_screen.dart';
import './recruitments.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        Login.id: (context) => Login(),
        Signup.id: (context) => Signup(),
        HomePage.routeName: (context) => HomePage(),
        SkillPage.routeName: (context) => SkillPage(),
        ProjectScreen.routeName: (context) => ProjectScreen(),
        Recruitments.routeName: (context) => Recruitments(),
        MentorSceen.routName: (context) => MentorSceen(),
        MyInfo.routeName: (ctx) => MyInfo(),
      },
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
          body: WelcomeScreen(),
        ),
      ),
    );
  }
}
