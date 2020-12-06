import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  static const String routeName = 'myinfo';
  @override
  Widget build(BuildContext context) {
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
            title: Text('My Profile'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.add_a_photo,
                                    size: 40,
                                  ),
                                  onPressed: () {}),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Add Photo',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 45,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(hintText: 'First Name'),
                        ),
                      ),
                      Container(
                        width: 45,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(hintText: 'Last Name'),
                        ),
                      ),
                      Container(
                        width: 45,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Mobile Number'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 160,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(hintText: 'Branch'),
                            ),
                          ),
                          Container(
                            width: 160,
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(hintText: 'Year'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 45,
                        height: 180,
                        margin: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Skills',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          minLines: 1,
                          maxLines: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 45,
                  child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.black87),
                ),
              ],
            ),
          ),
        ));
  }
}
