import 'package:flutter/material.dart';

class JoinWithACode extends StatefulWidget {
  @override
  _JoinWithACodeState createState() => _JoinWithACodeState();
}

class _JoinWithACodeState extends State<JoinWithACode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      backgroundColor: Colors.white,
    );
  }

  Widget appBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'Join with a code',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      ),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      'Join',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 16,
                          letterSpacing: 1.5),
                    ),
                    onPressed: () {},
                  )),
            )),
      ],
    );
  }

  Widget body() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Enter the code provided by the meeting organizer',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                    decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16),
                  filled: true,
                  isDense: true,
                  fillColor: Colors.grey[100],
                  hintText: '     Example: abc-mnop-xyz',
                  hintStyle: TextStyle(color: Color(0xff8F8F91)),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ]));
  }
}
