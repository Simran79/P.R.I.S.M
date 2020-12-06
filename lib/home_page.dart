import 'package:PRISM/MyInfo.dart';
import 'package:PRISM/mentoscreen.dart';
import 'package:PRISM/project_screen.dart';
import 'package:PRISM/recruitments.dart';
import './skill.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homepage';
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Card cards(
      String title,
      String routeNme,
    ) {
      return Card(
        elevation: 0,
        color: Colors.transparent,
        margin: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        child: Container(
          //

          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(routeNme);
            },
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          height: 180,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                spreadRadius: 1.0,
                offset: Offset(8.0, 8.0),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                Color(0xFFa184db),
                Color(0xff9dd2f6),
                Color(0xFF96d4ca),
              ],
              stops: [0, 0.65, 0.97],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('P.R.I.S.M         '),
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (_) => [
              PopupMenuItem(
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyInfo.routeName);
                    },
                    child: Text('Profile')),
              ),
              PopupMenuItem(
                child: FlatButton(
                    onPressed: () {
                      _auth.signOut();
                      Navigator.popAndPushNamed(context, Login.id);
                    },
                    child: Text('Sign Out')),
              ),
            ],
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFa184db),
                Color(0xff9dd2f6),
                Color(0xFF96d4ca),
              ],
              stops: [0, 0.65, 0.97],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 5 / 4,
          mainAxisSpacing: 2,
        ),
        children: <Widget>[
          cards('PROJECTS', ProjectScreen.routeName),
          cards('RECRUITMENTS INTERNSHIPS', Recruitments.routeName),
          cards('SKILLS', SkillPage.routeName),
          cards('MENTOR', MentorSceen.routName),
        ],
      ),
    );
  }
}
