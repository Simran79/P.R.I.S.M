import 'package:flutter/material.dart';

class Recruitments extends StatelessWidget {
  static const String routeName = '/recruitments';
  @override
  Widget build(BuildContext context) {
    Map<String, String> companies = {
      'Amazon': 'Open',
      'Microsoft': 'Closed',
      'Google': ' Open',
      'JP Morgan': 'Closed',
      'Amazo': 'Open',
      'Microsof': 'Closed',
      'Googl': 'Open',
      'JP Morga': 'Closed',
      'Amaz': 'Open',
      'Microso': 'Closed',
      'Goog': 'Open',
      'JP Morg': 'Closed',
      'Amazn': 'Open',
      'Microsot': 'Closed',
      'Googe': 'Open',
      'JP Morgn': 'Closed',
    };

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
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'RECRUITMENTS       ',
            ),
          ),
        ),
        body: Card(
          elevation: 0,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Company Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 2.0,
                    // width:300.0,
                    color: Colors.black45,
                  ),
                ),
                Container(
                  height: 480,
                  child: ListView(
                    children: companies.entries
                        .map(
                          (e) => Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: FlatButton(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        e.key,
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      IconButton(
                                        icon: e.value == 'Open'
                                            ? Icon(
                                                Icons.edit,
                                                color: Colors.green,
                                              )
                                            : Icon(
                                                Icons.close,
                                                color: Colors.red,
                                              ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                height: 0.7,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 90),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Apply',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Closed',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
