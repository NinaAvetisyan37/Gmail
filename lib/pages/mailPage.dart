import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gmail/class/message.dart';
import 'package:gmail/pages/composePage.dart';
import 'package:gmail/pages/smsPage.dart';

class MailPage extends StatefulWidget {
  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: floatingActionButton(),
      body: body(),
    );
  }

  floatingActionButton() {
    return MaterialButton(
      elevation: 10,
      height: 40,
      highlightColor: Colors.red[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      color: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ComposePage()),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* Padding(
                  padding:  EdgeInsets.all( 12),
                  child: Icon(Icons.create, color: Colors.red, size: 19),
                ),*/
                
            Icon(Icons.create, color: Colors.red, size: 19),
            SizedBox(width: 10),
            Text('Compose', style: TextStyle(color: Colors.red, fontSize: 17))
          ],
        ),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 7),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'PRIMARY',
              style: TextStyle(
                  color: Color(0xff8F8F91),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.people_alt_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Social',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text('YouTube', style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),

              // SizedBox(width: 50),
              // Spacer(),

              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Text('11 new'),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.blue,
                  textColor: Colors.white,
                  height: 20,
                  minWidth: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_offer_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Promotions',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text('AliExpress', style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Text('11 new'),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.green,
                  textColor: Colors.white,
                  height: 20,
                  minWidth: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.messenger_outline_outlined,
                      color: Colors.purple[500],
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forums',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text('Google Play',
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // SizedBox(width: 50),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Text('11 new'),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.purple,
                  textColor: Colors.white,
                  height: 20,
                  minWidth: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          messeges()
        ],
      ),
    );
  }

  Widget messeges() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(messageList.length - 1, (index) {
          return GestureDetector(
                      child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      messageList[index].name[0],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
                Row(

                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(messageList[index].name,
                                style: messageList[index].isRead
                                    ? TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 18,
                                        //letterSpacing: 1.2
                                      )
                                    : TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 4,
                            ),
                            Text(messageList[index].description,
                                style: messageList[index].isRead
                                    ? TextStyle(
                                        color: Colors.grey[800], fontSize: 16)
                                    : TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 2,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.61,
                              child: Text(
                                messageList[index].message,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 15.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                       // crossAxisAlignment: CrossAxisAlignment.end,
                                             crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(messageList[index].sendTime,
                              textAlign: TextAlign.right,
                              style: messageList[index].isRead
                                  ? TextStyle(
                                      color: Colors.grey[800], fontSize: 15)
                                  : TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 14,
                          ),
                          messageList[index].isStarred
                              ? IconButton(
                                  icon:
                                      Icon(Icons.star, color: Colors.yellow[800]),
                                  onPressed: () {
                                    setState(() {
                                      messageList[index].isStarred = false;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: Icon(Icons.star_border),
                                  onPressed: () {
                                    setState(() {
                                      messageList[index].isStarred = true;
                                    });
                                  },
                                ),
                        ],
                      )
                    ])
              ]),
            ),
          onTap: (){
            Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SmsPage(sms:messageList[index].name,description:messageList[index].description,sender:messageList[index].message,isStared:messageList[index].isStarred,isRead:messageList[index].isRead,sendTime:messageList[index].sendTime)));
          },);
          
        }
        )
        );
  }
}
