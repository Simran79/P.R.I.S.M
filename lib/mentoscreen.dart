import 'package:flutter/material.dart';
import 'dart:math';

class MentorSceen extends StatefulWidget {
  static const String routName = '/mentroscreen';
  final Map<String, List<String>> _mentorNames = {
    'ML': [
      'Miss Sawinder Kaur',
      'Dr. PS Rana',
      'Dr Anika',
      'Dr Geeta Kasana',
    ],
    'AI': [
      'Miss Sawinder Kaur',
      'Dr Singara Singh',
      'Sonal Kukreja',
    ],
    'Networking': [
      'Dipto Barman',
      'Dr GS Chabra',
    ],
  };
  List<String> getNames(String field) {
    if (field.length != 0)
      return _mentorNames[field];
    else
      return [];
  }

  List<String> res = [];
  @override
  _MentorSceenState createState() => _MentorSceenState();
}

class _MentorSceenState extends State<MentorSceen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController cntrl = TextEditingController();
    String input = '';

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
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child: Text('MENTOR       ')),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            // field type
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: cntrl,
                          onChanged: (value) {
                            input = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Area or Specialisation',
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              cntrl.clear();
                              print(input);
                              widget.res = widget.getNames(input);
                              input = '';
                            },
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            // list display
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: min(widget.res.length * 40.toDouble(), 400),
                      child: widget.res.length > 0
                          ? ListView.builder(
                              itemBuilder: (ctx, ind) {
                                return Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Text(widget.res[ind]),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      height: 1,
                                      color: Colors.black45,
                                    ),
                                  ],
                                );
                              },
                              itemCount: widget.res.length,
                            )
                          : Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              child: Text('No result Found'),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
