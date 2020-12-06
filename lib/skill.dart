import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillPage extends StatelessWidget {
  static const String routeName = '/skillspage';

  @override
  Widget build(BuildContext context) {
    Container skills(String title, String desc, List<String> links) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              desc,
              softWrap: true,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              child: ListView.builder(
                itemBuilder: (ctx, ind) {
                  return InkWell(
                    child: Text(
                      links[ind],
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () async {
                      if (await canLaunch(links[ind])) {
                        await launch(links[ind]);
                      }
                    },
                  );
                },
                itemCount: links.length,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFa184db),
            Color(0xff89bff5),
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
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'SKILLS            ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
          flexibleSpace: Container(
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     colors: [
              //       Color(0xFFa184db),
              //       Color(0xff89bff5),
              //       Color(0xFF96d4ca),
              //     ],
              //     stops: [0, 0.5, 0.97],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //   ),
              // ),
              ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              skills(
                  "COMPETITIVE PROGRAMMING",
                  "It is a mind sport, you\'ll enjoy the fun of logic building and adrenaline rush.",
                  [
                    'https://www.codechef.com/',
                    'https://practice.geeksforgeeks.org/home/',
                    'www.leetcode.com',
                  ]),
              skills(
                  "WEB DEVELOPMENT",
                  "Web development is the building and maintenance of websites; it's the work that happens behind the scenes to make a website look great, work fast and perform well with a seamless user experience.",
                  [
                    ' https://www.udemy.com/',
                    'https://learn.freecodecamp.org/',
                  ]),
              skills(
                  "MOBILE APP DEVELOPMENT",
                  "Mobile application development is the process of creating software applications that run on a mobile device, and a typical mobile application utilizes a network connection to work with remote computing resources.",
                  [
                    'https://www.udemy.com/',
                    'https://www.udacity.com/',
                  ]),
              skills(
                  "MACHINE LEARNING",
                  "Machine Learning is the field of study that gives computers the capability to learn without being explicitly programmed.",
                  [
                    'https://www.coursera.org/',
                    'https://www.edx.org/',
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
