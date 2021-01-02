
import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmsPage extends StatelessWidget {
  String sms;
  String description;
  String sender;
  bool isStared;
  bool isRead;
  String sendTime;
  SmsPage(
      {this.sms,
      this.description,
      this.sender,
      this.isStared,
      this.isRead,
      this.sendTime});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(description, style: TextStyle(fontSize: 20)),
                        FlatButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                          child: Text(
                            'inbox',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: Colors.grey[300],
                          textColor: Colors.white,
                          height: 20,
                          minWidth: 20,
                        ),
                      ],
                    ),
                    isStared
                        ? IconButton(
                            icon: Icon(Icons.star, color: Colors.yellow[800]),
                            onPressed: () {
                              isStared = false;
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.star_border),
                            onPressed: () {
                              isStared = true;
                            },
                          ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Stack(alignment: Alignment.center, children: [
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(left: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)],
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                sms[0],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Row(
                                  ///////////////////
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(

                                            //mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(sms,
                                                  style: isRead
                                                      ? TextStyle(
                                                          color:
                                                              Colors.grey[800],
                                                          fontSize: 18,
                                                          //letterSpacing: 1.2
                                                        )
                                                      : TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                              SizedBox(width: 5),
                                              Text(sendTime)
                                            ]),
                                        Row(
                                          children: [
                                            Text('to me'),
                                            IconButton(
                                                icon: Icon(
                                                    Icons.expand_more_outlined),
                                                    iconSize: 18,
                                                padding: EdgeInsets.zero,
                                                onPressed: () {})
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            icon: Icon(Icons.reply),
                                            onPressed: () {}),
                                        IconButton(
                                            icon: Icon(Icons.more_vert),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          sender,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                              color: Colors.grey[800], fontSize: 15.5),
                        ),
                      ),
                      //  Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FlatButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.reply),
                                  Text('Reply'),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                      style: BorderStyle.solid),borderRadius: BorderRadius.circular(5))
                                      ),
                          FlatButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.reply_all),
                                  Text('Reply all'),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                      style: BorderStyle.solid),borderRadius: BorderRadius.circular(5))),
                          FlatButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.forward_outlined),
                                  Text('Forward'),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                      style: BorderStyle.solid),borderRadius: BorderRadius.circular(5)))
                        ],
                      ),
                    ],
                  ),
                ),
                //List.generate(messageList.length - 1, (index) {return Text(messageList[index].name);})
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      actions: [
        Row(

            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.archive_outlined),
                onPressed: () {},
              ),
              IconButton(icon: Icon(Icons.delete_outline), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.mail_outline),
                onPressed: () {} /*=> modal1.mainBottomSheet(context)*/,
              ),
              //IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              PopupMenuButton<String>(
                icon: Icon(Icons.more_vert),
                itemBuilder: (BuildContext context) {
                  return [
                    'Move to',
                    'Snooze',
                    'Change labels',
                    'Mark important',
                    'Mute',
                    'Print',
                    'Revert auto-sizing',
                    'Report spam',
                    'Add to Tasks',
                    'Help & feedback'
                  ].map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ]),
      ],
    );
  }

  }













