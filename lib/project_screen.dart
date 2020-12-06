import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  static const String routeName = '/projectscreen';

  @override
  Widget build(BuildContext context) {
    _launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        print('url cannot be opened');
      }
    }

    Container projects(String heading, String desc, List<String> ideas) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: <Widget>[
          SizedBox(height: 10.0),
          Text(heading,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                // color: Colors.black54,
              )),
          SizedBox(height: 5.0),
          Text(
            desc,
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            softWrap: true,
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            child: ListView.builder(
              itemBuilder: (ctx, ind) => Text(
                ideas[ind],
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
              itemCount: ideas.length,
            ),
          ),
          SizedBox(height: 5.0),
        ]),
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
              'PROJECTS        ',
            )),
            flexibleSpace: Container(),
          ),
          body: Container(
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                projects(
                    "Machine Learning",
                    "Machine learning is an application of artificial intelligence (AI) that provides systems the ability to automatically learn and improve from experience without being explicitly programmed. Machine learning focuses on the development of computer programs that can access data and use it learn for themselves.",
                    [
                      '1. Machine Learning Gladiator',
                      '2. Play Money Ball',
                      '3. Predict Stock Prices',
                      '4. Teach a Neural Network to Read Handwriting',
                      "5. Investigate Enron",
                      '6. Write ML Algorithms from Scratch',
                      '7. Mine Social Media Sentiment',
                      '8. Improve Health Care',
                    ]),
                projects(
                    "Blockchain Technology",
                    "Blockchain is a system of recording information in a way that makes it difficult or impossible to change, hack, or cheat the system. A blockchain is essentially a digital ledger of transactions that is duplicated and distributed across the entire network of computer systems on the blockchain.",
                    [
                      '1. Trusted Crowdfunding Platform Using a Smart Contract',
                      '2. Peer To Peer Ridesharing',
                      '3. A Fake Product Identification System',
                      '4..Blockchain-Based Voting System',
                    ]),
                projects(
                    "Data Science",
                    "Data science is an inter-disciplinary field that uses scientific methods, processes, algorithms and systems to extract knowledge and insights from many structural and unstructured data.",
                    [
                      '1. Data Cleaning',
                      '2. Exploratory Data Analysis',
                    ]),
              ],
            )),
          )),
    );
  }
}
