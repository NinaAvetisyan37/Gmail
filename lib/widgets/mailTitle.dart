import 'dart:math';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gmail/class/message.dart';

class MailTitle extends StatefulWidget {
  @override
  _MailTitleState createState() => _MailTitleState();
}

class _MailTitleState extends State<MailTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
          decoration: InputDecoration(
        // isCollapsed: true,
        // border: InputBorder.Rectangle,
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        filled: true,
        fillColor: Colors.white,
        hintText: ' Search in mail',
        hintStyle: TextStyle(color: Color(0xff8F8F91)),
        suffixIcon: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => new AlertDialog(
                // shape:
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                ),
                actionsPadding: EdgeInsets.zero,
                actions: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.42,
                    //color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Stack(alignment: Alignment.center, children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    //  margin: EdgeInsets.only(left: 20.0),
                                    decoration: BoxDecoration(
                                      color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      // border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  Text(
                                    'N',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ]),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Nina Avetisyan',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.5),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  'ninaavetisyan1999@gmail.com'), //           Column(children: [Text(countIsNotRead().toString(),style: TextStyle(color:Colors.black,fontSize: 15),)],),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(width: 15),
                                              Text(
                                                MessagesList.countIsNotRead()
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ])
                                    //           Column(children: [Text(countIsNotRead().toString(),style: TextStyle(color:Colors.black,fontSize: 15),)],),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Manage your Google Account',
                                style: TextStyle(color: Colors.grey)),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey)),
                        ),
                        Divider(),
                        Row(children: [
                          IconButton(
                              icon: Icon(Icons.person_add_outlined),
                              onPressed: () {}),
                          Text(
                            'Add another account',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5),
                          ),
                        ]),
                        Row(children: [
                          IconButton(
                              icon: Icon(Icons.person_search_outlined),
                              onPressed: () {}),
                          Text(
                            'Manage accounts on this device',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5),
                          ),
                        ]),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.grey,
                              size: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Terms of service',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            );
          },
          child: Stack(alignment: Alignment.center, children: [
            Container(
              width: 30,
              height: 30,
              //  margin: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                // Colors.primaries[Random().nextInt(Colors.primaries.length)],
                // border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Text(
              'N',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ]),
        ),
      )),
    );
  }
}
